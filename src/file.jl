module File

  include("base.jl")

  function extension()
    fetch_yml("file.extension")
  end

  function mime_type()
    fetch_yml("file.mime_type")
  end

  function file_name(dir = nil, name = nil, ext = nil, directory_separator = "/")

    dir = Fake.Internet::slug unless dir
    name = Fake.Lorem::word.downcase unless name
    ext |= extension

    join([dir, name], directory_separator) + ".$(ext)"
  end

end
