MORSE_KEYS = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(input)
  MORSE_KEYS[input]
end

def decode_word(input)
  letters = input.split
  decoded_word = ''
  letters.each { |letter| decoded_word += decode_char(letter) }
  decoded_word
end

def decode(input)
  words = input.split('   ')
  decoded_message = ''
  words.each { |word| decoded_message += "#{decode_word(word)} " }
  decoded_message
end
