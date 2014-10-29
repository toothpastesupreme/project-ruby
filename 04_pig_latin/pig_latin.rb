def phoneme(p, q)
	if p[0..1]=="qu"
		p[2..-1]+p[0..1]+"ay"
	elsif p[0..2]=="sch"
		p[3..-1]+p[0..2]+"ay"
	elsif p[1..2]=="qu"
		p[3..-1]+p[0..2]+"ay"
	else
		q
	end
end



def pig (word)
	alphabet=('a'..'z').to_a
	vowels=%w[a e i o u]
	consonants = alphabet-vowels
	if vowels.include?(word[0])
		word+"ay"
	elsif consonants.include?(word[0])&&consonants.include?(word[1])&&consonants.include?(word[2])
		a=word[3..-1]+word[0..2]+"ay"
		phoneme(word, a)
	elsif consonants.include?(word[0])&&consonants.include?(word[1])
		b=word[2..-1]+word[0..1]+"ay"
		phoneme(word, b)
	elsif consonants.include?(word[0])
		c=word[1..-1]+word[0]+"ay"
		phoneme(word, c)
	else
		word
	end
end

def translate (string)
	if string.split.length==1
		if string[0]==string[0].upcase
			pig(string).capitalize
		else
			pig(string)
		end
	else
		y=string.split
		words=[]
		y.each do |x|
			if x[0]==x[0].upcase
				z=pig(x.downcase).capitalize
				words.push(z)
			else
				z=pig(x)
				words.push(z)
			end
		end
		words.join(" ")
	end
end