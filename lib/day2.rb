f = File.open("#{Dir.pwd}/input_day2.txt", "r")
total = []
f.each_line do |line|
  data =  line.split("x")
	l = Integer(data[0])
	w = Integer(data[1])
	h = Integer(data[2])
	sideA = (2 * l * w)
	sideB = (2 * w * h)
	sideC = (2 * h * l)
	minSide = [l*w, w*h, h*l ].min
	total << (sideA + sideB+ sideC + minSide)
end
f.close
puts total.reduce(:+)
