import YAML

using Fake
# using Pluck
# using Case

hex_characters = []
append!(hex_characters, map(x -> string(x), 0:9))
append!(hex_characters, map(x -> string(x), 'A':'F'))

function translate(cur_string::AbstractString)
  fetch_yml(join(split(cur_string, ".")[2:end], "."))
end

function rand_in_range(a, b)
  has_float = isa(a, AbstractFloat)
  has_float |= isa(b, AbstractFloat)

  if !has_float
    return rand(a:b)
  end

  cur_offset = rand() * ( b - a )
  a + cur_offset
end

function peek_yml(cur_string::AbstractString)
  split_string = split(cur_string, ".")

  cur_yml = YAML.load(open(joinpath(
    dirname(@__FILE__),
    "../lib/locales/en",
    string(split_string[1], ".yml")
  )))

  cur_value = cur_yml["en"]["fake"]

  for cur_key in split_string
    cur_value = cur_value[cur_key]
  end

  cur_value
end

function fetch_yml(cur_string::AbstractString)
  cur_value = peek_yml(cur_string)

  if isa(cur_value, AbstractArray)
    cur_value = pluck(cur_value)
  end

  cur_value
end

function parse_yml(cur_string::AbstractString)
  split_string = split(cur_string, ".")

  cur_file_name = shift!(split_string)

  cur_yml = YAML.load(open(joinpath(
    dirname(@__FILE__),
    "../lib/locales/en",
    string(cur_file_name, ".yml")
  )))

  cur_file = cur_yml["en"]["fake"][cur_file_name]

  cur_value = cur_file

  for cur_key in split_string
    cur_value = cur_value[cur_key]
  end

  cur_value = pluck(cur_value)

  for cur_match in matchall(r"#{[^}]+}", cur_value)
    cur_field = cur_match[3:end-1]

    if haskey(cur_file, cur_field)
      cur_field_value = pluck(cur_file[cur_field])
    else
      cur_field_value = parse_yml(lcfirst(cur_field))
    end

    cur_value = replace(
      cur_value,
      cur_match,
      cur_field_value
    )
  end

  cur_value
end
