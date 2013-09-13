class Encryptor
  def encrypt string
    string.split("").map { |letter|
      encrypt_letter(letter)
    }.join
  end

  def decrypt string
    encrypt string
  end

  private

  def encrypt_letter letter
    cipher[letter]
  end

  def cipher
    {
      "A" => "N", "B" => "O", "C" => "P", "D" => "Q", "E" => "R", "F" => "S",
      "G" => "T", "H" => "U", "I" => "V", "J" => "W", "K" => "X", "L" => "Y",
      "M" => "Z", "N" => "A", "O" => "B", "P" => "C", "Q" => "D", "R" => "E",
      "S" => "F", "T" => "G", "U" => "H", "V" => "I", "W" => "J", "X" => "K",
      "Y" => "L", "Z" => "M",
      "a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s",
      "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y",
      "m" => "z", "n" => "a", "o" => "b", "p" => "c", "q" => "d", "r" => "e",
      "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j", "x" => "k",
      "y" => "l", "z" => "m",
      "0" => "0", "1" => "1", "2" => "2", "3" => "3", "4" => "4", "5" => "5",
      "6" => "6", "7" => "7", "8" => "8", "9" => "9",
      " " => " ", "." => ".", "," => ",", ":" => ":", ";" => ";", "?" => "?",
      "(" => "(", ")" => ")", "{" => "{", "}" => "}", "[" => "[", "]" => "]",
      "-" => "-"
    }
  end
end
