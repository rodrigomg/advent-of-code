f = File.open(Dir.pwd+"/input_day2.txt", "r")
array = []
f.each_line do |line|
  puts line
end
f.close
puts array.size()
