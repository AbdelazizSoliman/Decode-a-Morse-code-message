MORSE_LETTERS = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.'     => 'E', '..-.'  => 'F',
  '--.' => 'G', '....'  => 'H', '..'    => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--'   => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..'  => 'Z'
}.freeze

def decode_char(morse_code)
  MORSE_LETTERS[morse_code]
end

def decode_word(morse_code)
  words = morse_code.split(' ')
  decoded_word = words.map { |morse_char| MORSE_LETTERS[morse_char] }.join('')
  decoded_word
end

# Test example
puts decode_char('.-')
puts decode_word("-- -.--")

