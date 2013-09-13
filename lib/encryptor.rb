class Encryptor
  def encrypt rotn, string
    string.split("").map { |letter|
      encrypt_letter(rotn, letter)
    }.join
  end

  def decrypt string
    encrypt string
  end

  private

  def encrypt_letter rotn, letter
    cipher(rotn)[letter]
  end

  def cipher rotn
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate rotn
    Hash[characters.zip(rotated_characters)]
  end
end
