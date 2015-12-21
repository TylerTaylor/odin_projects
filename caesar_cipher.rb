def caeser_cipher(text, num)
  cipher = ''
  text.each_char do |letter|
    #converts letter to ascii and shifts
    val = letter.ord + (num % 26)
    # sets upcase letter to value within 65 and 90, the ascii values for A-Z
    if letter =~ /[A-Z]/ && val > 90
      val = (val % 90) + 64
    # sets lowercase letter to value within 97 and 122, the ascii values for a-z
    elsif letter =~ /[a-z]/ && val > 122
      val = (val % 122) + 96
    # sets punctuation to ascii value without shifting
    elsif letter =~ /[^A-Za-z]/
      val = letter.ord
    end

    cipher += val.chr
  end
  cipher
end

puts "Enter a string"
input = gets.chomp
# cc13 is a caeser_cipher given n = 13
# if you run cc13 a second time, it will decipher the message
# these values can be anything adding up to 26 and it will work
cc13 = caeser_cipher(input, 3)
puts cc13
# back to original
puts caeser_cipher(cc13, 23)