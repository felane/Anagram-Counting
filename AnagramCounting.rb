def factorial(n = 0)
  (1..n).inject(:*)
end

STDIN.each_line do |line|
  input = line.chomp.split("")
  input2 = input.uniq

  length = input.length
  my_hash = {}

  if input == input2
    result = factorial(length)
  else
    input.each { |letter| my_hash[letter] = input.count(letter) }
    values = my_hash.values
    number = values.map { |element| factorial(element) }.reduce(:*)
    result = factorial(length) / number
  end

  puts result
end
