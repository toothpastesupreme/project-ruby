def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, y=1)
	if y==1
		x+" "+x
	else
		z=[]
		y.times do
			z.push(x)
		end
		z.join(" ")
	end	
end

def start_of_word(x,y=1)
	if y==1
		x[0]
	else
		x[0,y]
	end
end

def first_word(x)
	y=x.split
	y[0]
end

def titleize(x)
	y=x.split
	first_word=true
	y.each do |x|
		if first_word==true
			x.replace(x.capitalize)
		elsif first_word==false&&x=="and"||x=="the"||x=="over"
			x.replace(x.downcase)
		else
			x.replace(x.capitalize)
		end
		first_word=false
	end
	y.join(" ")
end