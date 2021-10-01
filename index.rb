def morse
  { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
    I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
    Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
    Y: '-.--', Z: '--..', '/': '/' }
end

def decode_char(char)
  morse.key char
end

def decode_word(word)
  word.split.map { |char| decode_char char }.join
end

def decode_sentence(morse_sentences)
  morse_sentences.split('   ').map { |sentence| decode_word sentence }.join(' ')
end
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.  /  .-. ..- -... .. . ...')
