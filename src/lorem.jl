# Based on Perl"s Text::Lorem
module Lorem

  include("base.jl")

  CHARACTERS = ("0":"9").to_a + ("a":"z").to_a

  function word()
    pluck(translate("fake.lorem.words"))
  end

  function words(num = 3, supplemental = false)
    resolved_num = resolve(num)
    word_list = (
      translate("fake.lorem.words") +
      (supplemental ? translate("fake.lorem.supplemental") : [])
    )
    word_list = word_list * ((resolved_num / word_list.length) + 1)
    shuffle(word_list)[0, resolved_num]
  end

  function character()
    pluck(CHARACTERS)
  end

  function characters(char_count = 255)
    char_count = resolve(char_count)
    return "" if char_count.to_i < 1
    Array.new(char_count) { pluck(CHARACTERS) }.join
  end

  function sentence(word_count = 4, supplemental = false, random_words_to_add = 6)
    words(word_count + rand(random_words_to_add.to_i), supplemental).join(" ").capitalize + "."
  end

  function sentences(sentence_count = 3, supplemental = false)
    1.upto(resolve(sentence_count)).collect { sentence(3, supplemental) }
  end

  function paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3)
    sentences(resolve(sentence_count) + rand(random_sentences_to_add.to_i), supplemental).join(" ")
  end

  function paragraphs(paragraph_count = 3, supplemental = false)
    1.upto(resolve(paragraph_count)).collect { paragraph(3, supplemental) }
  end

  function question(word_count = 4, supplemental = false, random_words_to_add = 6)
    words(word_count + rand(random_words_to_add.to_i), supplemental).join(" ").capitalize + "?"
  end

  function questions(question_count = 3, supplemental = false)
    1.upto(resolve(question_count)).collect { question(3, supplemental) }
  end

  # If an array or range is passed, a random value will be selected.
  # All other values are simply returned.
  function resolve(value)
    case value
    when Array then pluck(value)
    when Range then rand value
    else value
    end
  end

end
