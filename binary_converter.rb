class BinaryConverter

  def request_input
    puts "Please enter a positive integer"
    num = gets.chomp.to_i
    unless num > 0
      puts "Seriously?  POSITIVE. INTEGER. MAN."
      num = gets.chomp.to_i
    end
    num
  end


  def convert_to_binary(number)
    binary_array = []
    while number
      binary_array << number % 2
      break if number <= 0
      number = number / 2
    end
    binary_array
  end


  def say_thanks(number, array)
    puts "Thanks!"
    print "#{number} converts to binary as: "
    puts "#{array.reverse.join}"
  end

end


converter = BinaryConverter.new
num = converter.request_input
converted_array = converter.convert_to_binary(num)
converter.say_thanks(num, converted_array)



