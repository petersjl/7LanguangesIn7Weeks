i = 0
a = []
while i < 16
	i+=1
	a.push(i)
end

i = 0;
a.each { |num|
	if ((i % 4) == 0) then puts '' end
	print num
	i = i + 1;
}

puts "\n\n"

a.each_slice(4) { |set| 
	puts set.inject('') { |cur, n|
		cur + n.to_s
	}
}