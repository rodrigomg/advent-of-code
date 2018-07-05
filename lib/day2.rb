def input = new File("input_day2.txt").text
total = []
input.split("[\n]").each{line ->
 //2*l*w + 2*w*h + 2*h*l
 //l=0, w=1, h=2
 String[] data = line.split("[x]")
 l = data[0].toInteger()
 w = data[1].toInteger()
 h = data[2].toInteger()
 sideA = (2*l*w)
 sideB = (2*w*h)
 sideC = (2*h*l)
 minSide = [l*w,w*h,h*l].min()
 total.add(sideA+sideB+sideC+minSide)
}
println total.sum()
