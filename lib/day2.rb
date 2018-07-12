f = File.open("#{Dir.pwd}/input_day2.txt", "r")
array = []
f.each_line do |line|
  puts line.split("x").size()
	puts line
end
f.close
puts array.size()
