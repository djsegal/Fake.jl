using Fake
using Base.Test

include("../src/base.jl")

# ========
#  colors
# ========

# -----
#  hex
# -----

cur_hex_color = Fake.Color.hex_color()

@test startswith(cur_hex_color, "#")

cur_hex_color = cur_hex_color[2:end]

@test length(cur_hex_color) == 6

cur_hex_chars = split(cur_hex_color, "")

for cur_hex_char in cur_hex_chars
  @test in(cur_hex_char, hex_characters)
end

# -----
#  rgb
# -----

cur_rgb_color = Fake.Color.rgb_color()

@test length(cur_rgb_color) == 3

for cur_sub_color in cur_rgb_color
  @test 0 <= cur_sub_color <= 255
end

# ------
#  name
# ------

cur_color_name = Fake.Color.color_name()

cur_color_list = peek_yml("color.name")

@test length(cur_color_list) > 10

@test in(cur_color_name, cur_color_list)

# ==========
#  commerce
# ==========

cur_count = 5

cur_department_list = peek_yml("commerce.department")

cur_department_name = Fake.Commerce.department(cur_count, true)

cur_split_department = filter(
  x -> !isempty(x),
  split(cur_department_name, r"[&\s,]")
)

@test length(cur_split_department) == cur_count

for cur_department_part in cur_split_department
  @test in(cur_department_part, cur_department_list)
end

# ========
#  hacker
# ========

# ---------
#  ingverb
# ---------

cur_ing_verb = Fake.Hacker.ingverb()

@test any(
  x -> endswith(x, "ing"),
  split(cur_ing_verb)
)

# ========
#  number
# ========

# ---------------
#     number
#  (w/ n digits)
# ---------------

cur_number_1 = Fake.Number.number(cur_count)
cur_number_2 = cur_number_1

for cur_index in 1:30
  ( cur_number_1 != cur_number_2 ) && break
  cur_number_2 = Fake.Number.number(cur_count)
end

@test cur_number_1 != cur_number_2

@test length(cur_number_1) == cur_count
@test length(cur_number_2) == cur_count

@test parse(Int, cur_number_1) >= 0
@test_throws ArgumentError parse(Int, "1968353479.0")

# ---------
#  decimal
# ---------

cur_decimal = Fake.Number.decimal(7, 11)

cur_first_part, cur_second_part =
  split(cur_decimal, ".")

@test length(cur_first_part) == 7

@test length(cur_second_part) == 11
