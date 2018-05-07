def input = """29x13x26
11x11x14"""

input.split("[\n]").each{line ->
 //2*l*w + 2*w*h + 2*h*l
 //l=0, w=1, h=2
 String[] data = line.split("[x]")
 println data[0]
 println data[1]
 println data[2]
 println "1: ${2*(data[0].toInteger() * data[1].toInteger())}"
 println "2: ${2*(data[1].toInteger() * data[2].toInteger())}"
 println "3: ${2*(data[2].toInteger() * data[0].toInteger())}"
}
