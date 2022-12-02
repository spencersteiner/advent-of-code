require './calorie'

input = File.read('input.txt')
calorie = Calorie.new(input)

puts "Most calories of any group is #{calorie.most}"
puts "Most calories for the top three combined is #{calorie.most(3)}"
