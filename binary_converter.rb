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
    eval = number
    while eval
      binary_array << eval % 2
      break if eval <= 0
      eval = eval / 2
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



