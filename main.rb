$morse_alphabet = {
  '.-' => 'A',
  '-...' =>	'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
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
}

def decode_char(morse_char)
  $morse_alphabet[morse_char]
end

def decode_word(morse_word)
  chars = morse_word.split
  char = chars.map do |c|
    decode_char(c)
  end
  char.join
end

p decode_word('-- -.--   -. .- -- .')
