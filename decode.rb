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
  words = morse_code.split('   ')
  decoded_words = words.map do |word|
    word.split.map { |morse_char| decode_char(morse_char) }.join
  end
  decoded_words.join(' ')
end

# Test examples
puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_word('-- -.--    -. .- -- .')

# Decoding the message from the old bottle
message_in_morse = '.-    -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_word(message_in_morse)
puts decoded_message
