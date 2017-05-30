class MorseCode

  def initialize
    @morse_letters = {'a' => '.-',
                      'b' => '-...',
                      'c' => '-.-.',
                      'd' => '-..',
                      'e' => '.',
                      'f' => '..-.',
                      'g' => '--.',
                      'h' => '....',
                      'i' => '..',
                      'j' => '.---',
                      'k' => '-.-',
                      'l' => '.-..',
                      'm' => '--',
                      'n' => '-.',
                      'o' => '---',
                      'p' => '.--.',
                      'q' => '--.-',
                      'r' => '.-.',
                      's' => '...',
                      't' => '-',
                      'u' => '..-',
                      'v' => '...-',
                      'w' => '.--',
                      'x' => '-..-',
                      'y' => '-.--',
                      'z' => '--..',
                    }
  end

  def translate_phrase(phrase)
    letters = manipulate_phrase(phrase)
    morse_group = letters.map {|letter| translate_letter(letter)}
    puts morse_group.join(' ')
  end

  def manipulate_phrase(phrase)
    phrase.downcase.split("")
  end

  def translate_letter(letter)
    @morse_letters[letter] ? @morse_letters[letter] : letter
  end
end

phrase = MorseCode.new
phrase.translate_phrase("This is a test!")
phrase.translate_phrase("Can we do a really long sentence, with a comma?")
