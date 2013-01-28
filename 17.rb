singles = ["one","two","three","four","five","six","seven","eight","nine"]
teens = ["ten","eleven", "twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
rounds = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

def ninetynine (rounds, teens, singles)
  ninetynine = singles + teens
  
  rounds.each do |round| 
    ninetynine << round
  	singles.each do |single|
  		 ninetynine << (round+single)
  	end
  end
   
  ninetynine
end

def allnums (rounds, teens, singles)

  ninetynine = ninetynine(rounds, teens, singles)
  allnums = ninetynine(rounds, teens, singles)

  singles.each do |single|
    allnums << single + "hundred"
    ninetynine.each do |n|
      allnums << single + "hundredand" + n
    end
  end
  
  allnums << "onethousand"

  allnums
end

def totallength(array)
	i = 0
	totallength = 0
	while i < array.length
		totallength = totallength + array[i].length
		i = i + 1
	end
	totallength
end

allnums = allnums(rounds, teens, singles)

File.open("allnums.txt", 'w') { |file| 
  for i in allnums
    file.write(i + "\n") 
  end
}

puts totallength(["one", "two", "three", "four", "five"])
puts totallength(allnums)

