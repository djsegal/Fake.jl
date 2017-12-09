module Address

  include("base.jl")

  function city(options = {})
    parse_yml(options[:with_state] ? "address.city_with_state" : "address.city")
  end

  function street_name()
    parse_yml("address.street_name")
  end

  function street_address(include_secondary = false)
    numerify(parse_yml("address.street_address") + (include_secondary ? " " + secondary_address : ""))
  end

  function secondary_address()
    bothify(fetch_yml("address.secondary_address"))
  end

  function building_number()
    bothify(fetch_yml("address.building_number"))
  end

  function community()
    parse_yml("address.community")
  end

  function zip_code(state_abbreviation = "")
    return bothify(fetch_yml("address.postcode")) if state_abbreviation === ""

    # provide a zip code that is valid for the state provided
    # see http://www.fincen.gov/forms/files/us_state_territory_zip_codes.pdf
    bothify(fetch_yml("address.postcode_by_state." + state_abbreviation))
  end

  function time_zone()
    fetch_yml("address.time_zone")
  end

  alias_method :zip, :zip_code
  alias_method :postcode, :zip_code

  function street_suffix();      fetch_yml("address.street_suffix");     end
  function city_suffix();        fetch_yml("address.city_suffix");       end
  function city_prefix();        fetch_yml("address.city_prefix");       end
  function state_abbr();         fetch_yml("address.state_abbr");        end
  function state();              fetch_yml("address.state");             end
  function country();            fetch_yml("address.country");           end
  function country_code();       fetch_yml("address.country_code");      end
  function country_code_long();  fetch_yml("address.country_code_long"); end

  function latitude()
    ((rand * 180) - 90).to_s
  end

  function longitude()
    ((rand * 360) - 180).to_s
  end

  function full_address()
    parse_yml("address.full_address")
  end

end
