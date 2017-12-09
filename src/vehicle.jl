module Vehicle

  include("base.jl")

  VIN_CHARS = "0123456789.ABCDEFGH:JKLMN.P.R:STUVWXYZ"
  VIN_MAP = "0123456789X"
  VIN_WEIGHTS = "8765432X098765432"

  #ISO 3779
  function vin()
    _, wmi, wmi_ext = pluck(fetch_all("vehicle.manufacture"))

    c = VIN_CHARS.split("").reject{ |n| n == "."}
    vehicle_identification_number = wmi.split("").concat( Array.new(14) { pluck(c) } )
    (12:14).to_a.each_with_index { |n, i| vehicle_identification_number[n] = wmi_ext[i] } unless wmi_ext.nil?
    vehicle_identification_number[10] = fetch_yml("vehicle.year")
    vehicle_identification_number[8] = vin_checksum(vehicle_identification_number)

    vehicle_identification_number.join.upcase
  end

  function manufacture()
    pluck(fetch_all("vehicle.manufacture")).first
  end

  function calculate_vin_weight(character, i)
    (VIN_CHARS.index(character) % 10) * VIN_MAP.index(VIN_WEIGHTS[i])
  end

  function vin_checksum(vehicle_identification_number)
    VIN_MAP[vehicle_identification_number.each_with_index.map(&method(:calculate_vin_weight)).inject(:+) % 11]
  end

end
