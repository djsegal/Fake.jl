# Fake.Internet
```julia
# Optional argument name=nil
Fake.Internet.email() # => "eliza@mann.net"

Fake.Internet.email('Nancy') # => "nancy@terry.biz"

# Optional argument name=nil
Fake.Internet.free_email() # => "freddy@gmail.com"

Fake.Internet.free_email('Nancy') # => "nancy@yahoo.com"

# Optional argument name=nil
Fake.Internet.safe_email() # => "christelle@example.org"

Fake.Internet.safe_email('Nancy') # => "nancy@example.net"

# Optional arguments specifier=nil, separators=[".", "_"])
Fake.Internet.user_name() # => "alexie"

Fake.Internet.user_name('Nancy') # => "nancy"

Fake.Internet.user_name('Nancy Johnson', [".", "_", "-"])) # => "johnson-nancy"

# Optional arguments: min_length=5, max_length=8
Fake.Internet.user_name(5:8)

# Optional arguments: min_length=8, max_length=16
Fake.Internet.password() # => "vg5msvy1uerg7"

Fake.Internet.password(8) # => "yfgjik0hgzdqs0"

Fake.Internet.password(10, 20) # => "eoc9shwd1hwq4vbgfw"

Fake.Internet.password(10, 20, true) # => "3k5qS15aNmG"

Fake.Internet.password(10, 20, true, true) # => "*%NkOnJsH4"

Fake.Internet.domain_name() # => "effertz.info"

Fake.Internet.fix_umlauts('äöüß') # => "aeoeuess"

Fake.Internet.domain_word() # => "haleyziemann"

Fake.Internet.domain_suffix() # => "info"

Fake.Internet.ip_v4_address() # => "24.29.18.175"

# Private IP range according to RFC 1918 and 127.0.0.0/8 and 169.254.0.0/16.
Fake.Internet.private_ip_v4_address() # => "10.0.0.1"

# Guaranteed not to be in the ip range from the private_ip_v4_address method.
Fake.Internet.public_ip_v4_address() # => "24.29.18.175"

Fake.Internet.ip_v4_cidr() # => "24.29.18.175/21"

Fake.Internet.ip_v6_address() # => "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df"

Fake.Internet.ip_v6_cidr() # => "ac5f:d696:3807:1d72:2eb5:4e81:7d2b:e1df/78"

# Optional argument prefix=''
Fake.Internet.mac_address() # => "e6:0d:00:11:ed:4f"
Fake.Internet.mac_address('55:44:33') # => "55:44:33:02:1d:9b"

# Optional arguments: host=domain_name, path="/#{user_name}"
Fake.Internet.url() # => "http://thiel.com/chauncey_simonis"
Fake.Internet.url('example.com') # => "http://example.com/clotilde.swift"
Fake.Internet.url('example.com', '/foobar.html') # => "http://example.com/foobar.html"

# Optional arguments: words=nil, glue=nil
Fake.Internet.slug() # => "pariatur_laudantium"
Fake.Internet.slug('foo bar') # => "foo.bar"
Fake.Internet.slug('foo bar', '-') # => "foo-bar"

# Optional argument: vendor=nil
Fake.Internet.user_agent() # => "Mozilla/5.0 (compatible; MSIE 9.0; AOL 9.7; AOLBuild 4343.19; Windows NT 6.1; WOW64; Trident/5.0; FunWebProducts)"
Fake.Internet.user_agent(:firefox) # => "Mozilla/5.0 (Windows NT x.y; Win64; x64; rv:10.0) Gecko/20100101 Firefox/10.0"
```
