
class AllergyReport
  def initialize
    @allergens = {1 => 'eggs',
                  2 => 'peanuts',
                  4 => 'shellfish',
                  8 => 'strawberries',
                  16 => 'tomatoes',
                  32 => 'chocolate',
                  64 => 'pollen',
                  128 => 'cats'
                  }
  end

  def human_readable_report(number, name)
    allergen_keys = number_combination(number)
    allergen_words = convert_allergen_keys_to_values(allergen_keys)
    gramatical_allergens = ''

    allergen_words.each_with_index do |word, i|
      if allergen_words.length == 1
        gramatical_allergens << "#{word}."
      elsif allergen_words.length == 2
        gramatical_allergens << "#{word} and #{allergen_words[i + 1]}."
      # elsif i == (allergen_words.length - 1)
      #   gramatical_allergens << "and #{word}."
      else
      gramatical_allergens << "#{word} "
    end
    end

    "#{name} is allergic to #{gramatical_allergens}"
  end

  def number_combination(number)
    combination = []
    number = number
    descending_allergens = @allergens.keys.reverse

    descending_allergens.each do |x|
      if (number - x) == (number - x).abs
        combination << x
        number -= x
      end
    end
    combination
  end

  def convert_allergen_keys_to_values(allergen_keys)
    allergen_words = []
    allergen_keys.each do |key|
      allergen_words << @allergens[key]
    end
    allergen_words
  end

end
