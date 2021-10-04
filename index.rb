class String
  MORSE = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
    I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
    Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
    Y: '-.--', Z: '--..', '/': '/' }

    def decode_char
      MORSE.key self
    end

    def decode_word
      split.map(&:decode_char).join
    end

    def decode_sentence
      split('   ').map(&:decode_word).join(' ')
    end
  end

  # puts ".-".decode_char
  # puts "-.-.   --.-".decode_word
  # puts '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.  /  .-. ..- -... .. . ...'.decode_sentence