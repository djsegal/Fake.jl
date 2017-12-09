module Internet

  include("base.jl")

  function email(name = nil)
    join([user_name(name), domain_name], "@")
  end

  function free_email(name = nil)
    join([user_name(name), fetch_yml("internet.free_email")], "@")
  end

  function safe_email(name = nil)
    join([user_name(name), "example."+ pluck(["org", "com", "net"])], "@")
  end

  function user_name(specifier = nil, separators = [".", "_"])
    with_locale(:en) do
      if specifier.respond_to?(:scan)
        return join(specifier.scan(/\w+/).shuffle, pluck(separators)).downcase
      elsif specifier.kind_of?(Integer)
        # If specifier is Integer and has large value, Argument error exception is raised to overcome memory full error
        raise ArgumentError, "Given argument is too large" if specifier > 10**6
        tries = 0 # Don"t try forever in case we get something like 1_000_000.
        begin
          result = user_name(nil, separators)
          tries += 1
        end while result.length < specifier && tries < 7
        return result * (specifier/result.length + 1) if specifier > 0
      elsif specifier.kind_of?(Range)
        tries = 0
        begin
          result = user_name(specifier.min, separators)
          tries += 1
        end while !specifier.include?(result.length) && tries < 7
        return result[0...specifier.max]
      end

      pluck([
        Char.prepare(Name.first_name),
        [Name.first_name, Name.last_name].map{ |name|
          Char.prepare(name)
        }.join(pluck(separators))
      ])
    end
  end

  function password(min_length = 8, max_length = 16, mix_case = true, special_chars = false)
    temp = Lorem.characters(min_length)
    diff_length = max_length - min_length
    if diff_length > 0
      diff_rand = rand(diff_length + 1)
      temp += Lorem.characters(diff_rand)
    end

    if mix_case
      temp.chars.each_with_index do |char, index|
        temp[index] = char.upcase if index.even?
      end
    end

    if special_chars
      chars = ["!", "@", "#", "\$", "%", "^", "&", "*"]
      rand(1:min_length).times do |i|
        temp[i] = chars[rand(chars.length)]
      end
    end

    temp
  end

  function domain_name()
    with_locale(:en) { [Char.prepare(domain_word), domain_suffix].join(".") }
  end

  function fix_umlauts(string="")
    Char.fix_umlauts(string)
  end

  function domain_word()
    with_locale(:en) { Char.prepare(Company.name.split(" ").first) }
  end

  function domain_suffix()
    fetch_yml("internet.domain_suffix")
  end

  function mac_address(prefix="")
    prefix_digits = prefix.split(":").map{ |d| d.to_i(16) }
    address_digits = (6 - prefix_digits.size).times.map{ rand(256) }
    (prefix_digits + address_digits).map{ |d| "%02x" % d }.join(":")
  end

  function ip_v4_address()
    ary = (2:254).to_a
    [ pluck(ary), pluck(ary), pluck(ary), pluck(ary) ].join(".")
  end

  function private_ip_v4_address()
    begin
      addr = ip_v4_address
    end while !private_net_checker[addr]
    addr
  end

  function public_ip_v4_address()
    begin
      addr = ip_v4_address
    end while reserved_net_checker[addr]
    addr
  end

  function private_nets_regex()
    [
      /^10\./,                                       # 10.0.0.0    – 10.255.255.255
      /^100\.(6[4-9]|[7-9]\d|1[0-1]\d|12[0-7])\./,   # 100.64.0.0  – 100.127.255.255
      /^127\./,                                      # 127.0.0.0   – 127.255.255.255
      /^169\.254\./,                                 # 169.254.0.0 – 169.254.255.255
      /^172\.(1[6-9]|2\d|3[0-1])\./,                 # 172.16.0.0  – 172.31.255.255
      /^192\.0\.0\./,                                # 192.0.0.0   – 192.0.0.255
      /^192\.168\./,                                 # 192.168.0.0 – 192.168.255.255
      /^198\.(1[8-9])\./                             # 198.18.0.0  – 198.19.255.255
    ]
  end

  function private_net_checker()
    lambda { |addr| private_nets_regex.any? { |net| net =~ addr } }
  end

  function reserved_nets_regex()
    [
      /^0\./,                 # 0.0.0.0      – 0.255.255.255
      /^192\.0\.2\./,         # 192.0.2.0    – 192.0.2.255
      /^192\.88\.99\./,       # 192.88.99.0  – 192.88.99.255
      /^198\.51\.100\./,      # 198.51.100.0 – 198.51.100.255
      /^203\.0\.113\./,       # 203.0.113.0  – 203.0.113.255
      /^(22[4-9]|23\d)\./,    # 224.0.0.0    – 239.255.255.255
      /^(24\d|25[0-5])\./     # 240.0.0.0    – 255.255.255.254  and  255.255.255.255
    ]
  end

  function reserved_net_checker()
    ->(addr){ (private_nets_regex + reserved_nets_regex).any? { |net| net =~ addr } }
  end

  function ip_v4_cidr()
    "$(ip_v4_address)/$(1 + rand(31))"
  end

  function ip_v6_address()
    (1:8).map { rand(65536).to_s(16) }.join(":")
  end

  function ip_v6_cidr()
    "$(ip_v6_address)/$(1 + rand(127))"
  end

  function url(host = domain_name, path = "/$(user_name)", scheme = "http")
    "$(scheme)://$(host)$(path)"
  end

  function slug(words = nil, glue = nil)
    glue |= pluck(["-", "_", "."])
    (words || Fake.Lorem::words(2).join(" ")).gsub(" ", glue).downcase
  end

  function device_token()
    shuffle(rand(16 ** 64).to_s(16).rjust(64, "0").chars.to_a).join
  end

  function user_agent(vendor = nil)
    agent_hash = translate("fake.internet.user_agent")
    agents = vendor.respond_to?(:to_sym) && agent_hash[vendor.to_sym] || agent_hash[pluck(agent_hash.keys)]
    pluck(agents)
  end

end