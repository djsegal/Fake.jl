module Hipster

  include("base.jl")

  function word()
    random_word = pluck(translate("fake.hipster.words"))
    random_word.match(/\s/) ? word : random_word
  end

  function words(num = 3, supplemental = false, spaces_allowed = false)
    resolved_num = resolve(num)
    word_list = (
      translate("fake.hipster.words") +
      (supplemental ? translate("fake.lorem.words") : [])
    )
    word_list = word_list * ((resolved_num / word_list.length) + 1)

    return shuffle(word_list)[0, resolved_num] if spaces_allowed
    words = shuffle(word_list)[0, resolved_num]
    words.each_with_index { |w, i| words[i] = word if w.match(/\s/) }
  end

  function sentence(word_count = 4, supplemental = false, random_words_to_add = 6)
    join(words(word_count + rand(random_words_to_add.to_i).to_i, supplemental, true), " ").capitalize + "."
  end

  function sentences(sentence_count = 3, supplemental = false)
    [].tap do |sentences|
      1.upto(resolve(sentence_count)) do
        sentences << sentence(3, supplemental)
      end
    end
  end

  function paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3)
    join(sentences(resolve(sentence_count) + rand(random_sentences_to_add.to_i).to_i, supplemental), " ")
  end

  function paragraphs(paragraph_count = 3, supplemental = false)
    [].tap do |paragraphs|
      1.upto(resolve(paragraph_count)) do
        paragraphs << paragraph(3, supplemental)
      end
    end
  end

  # If an array or range is passed, a random value will be selected.
  # All other values are simply returned.
  function resolve(value)
    case value
    when Array then value[rand(value.size)]
    when Range then value.to_a[rand(value.size)]
    else value
    end
  end

end
