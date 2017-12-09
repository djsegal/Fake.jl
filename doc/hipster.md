# Fake.Hipster

Adapted from [Hipster Ipsum](http://hipsum.co/)
```julia
Fake.Hipster.word() # => "irony"

# Optional arguments: num=3, supplemental=false, spaces_allowed = false
Fake.Hipster.words() # => ["pug", "pitchfork", "chia"]
Fake.Hipster.words(4) # => ["ugh", "cardigan", "poutine", "stumptown"]
Fake.Hipster.words(4, true) # => ["iste", "seitan", "normcore", "provident"]
Fake.Hipster.words(4, true, true) # => ["qui", "magni", "craft beer", "est"]

# Optional arguments: word_count=4, supplemental=false, random_words_to_add=6
Fake.Hipster.sentence() # => "Park iphone leggings put a bird on it."
Fake.Hipster.sentence(3) # => "Pour-over swag godard."
Fake.Hipster.sentence(3, true) # => "Beard laboriosam sequi celiac."
Fake.Hipster.sentence(3, false, 4) # => "Bitters retro mustache aesthetic biodiesel 8-bit."
Fake.Hipster.sentence(3, true, 4) # => "Occaecati deleniti messenger bag meh crucifix autem."

# Optional arguments: sentence_count=3, supplemental=false
Fake.Hipster.sentences() # => ["Godard pitchfork vinegar chillwave everyday 90's whatever.", "Pour-over artisan distillery street waistcoat.", "Salvia yr leggings franzen blue bottle."]
Fake.Hipster.sentences(1) # => ["Before they sold out pinterest venmo umami try-hard ugh hoodie artisan."]
Fake.Hipster.sentences(1, true) # => ["Et sustainable optio aesthetic et."]

# Optional arguments: sentence_count=3, supplemental=false, random_sentences_to_add=3
Fake.Hipster.paragraph() # => "Migas fingerstache pbr&b tofu. Polaroid distillery typewriter echo tofu actually. Slow-carb fanny pack pickled direct trade scenester mlkshk plaid. Banjo venmo chambray cold-pressed typewriter. Fap skateboard intelligentsia."
Fake.Hipster.paragraph(2) # => "Yolo tilde farm-to-table hashtag. Lomo kitsch disrupt forage +1."
Fake.Hipster.paragraph(2, true) # => "Typewriter iste ut viral kombucha voluptatem. Sint voluptates saepe. Direct trade irony chia excepturi yuccie. Biodiesel esse listicle et quam suscipit."
Fake.Hipster.paragraph(2, false, 4) # => "Selvage vhs chartreuse narwhal vinegar. Authentic vinyl truffaut carry vhs pop-up. Hammock everyday iphone locavore thundercats bitters vegan goth. Fashion axe banh mi shoreditch whatever artisan."
Fake.Hipster.paragraph(2, true, 4) # => "Deep v gluten-free unde waistcoat aperiam migas voluptas dolorum. Aut drinking illo sustainable sapiente. Direct trade fanny pack kale chips ennui semiotics."

# Optional arguments: paragraph_count=3, supplemental=false
Fake.Hipster.paragraphs() # => ["Tilde microdosing blog cliche meggings. Intelligentsia five dollar toast forage yuccie. Master kitsch knausgaard. Try-hard everyday trust fund mumblecore.", "Normcore viral pickled. Listicle humblebrag swag tote bag. Taxidermy street hammock neutra butcher cred kale chips. Blog portland humblebrag trust fund irony.", "Single-origin coffee fixie cleanse tofu xoxo. Post-ironic tote bag ramps gluten-free locavore mumblecore hammock. Umami loko twee. Ugh kitsch before they sold out."]
Fake.Hipster.paragraphs(1) # => ["Skateboard cronut synth +1 fashion axe. Pop-up polaroid skateboard asymmetrical. Ennui fingerstache shoreditch before they sold out. Tattooed pitchfork ramps. Photo booth yr messenger bag raw denim bespoke locavore lomo synth."]
Fake.Hipster.paragraphs(1, true) # => ["Quae direct trade pbr&b quo taxidermy autem loko. Umami quas ratione migas cardigan sriracha minima. Tenetur perspiciatis pickled sed eum doloribus truffaut. Excepturi dreamcatcher meditation."]
```
