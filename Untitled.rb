#
#
# a = (1...10000).to_a.select{|x| x % 4 == 1 && x % 9 == 0}
# puts a.inspect
# puts a.inject{|sum,x|sum+x}



characters = [["buffy","willow","xander","giles"],["pearl","amethyst","garnet"],["lindsay","job","buster"]]

#puts characters.flatten.each{|x| puts x }

puts "\n**********************************************************************\n\n"

characters.each do |world|
  world.each do |name|
    puts name.capitalize
  end
end



# arr1=(1..20).to_a
# puts arr1.inspect
#
# arr2 = arr1.map{|x|x*x}
# puts arr2.inspect
#
# arr3 = arr1.select{|x|x%3==0}
# puts arr3.inspect
#
# arr4 = arr1.select{|x|x.even?}
# puts arr4.inspect
#
# puts "\n**********************************************************************\n\n"
#
# arr5 = (1..1000).to_a
#
# arr6 = arr5.select{|x| (x*x) % 15 == 0}
#
# puts arr6.inspect
#
# puts arr6.inject{|sum,x|sum+x}
