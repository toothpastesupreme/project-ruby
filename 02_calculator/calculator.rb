def add (x,y)
	x+y
end

def subtract (x,y)
	x-y
end

def sum (x)
	x.inject(0){|sum, number| sum+number}
end

def multiply (*x)
	x.inject(1){|num, number| num*number}
end

def power (x,y)
	z=[]
	y.times do
		z.push(x)
	end
	z.inject(1){|num, number| num*number}
end

def factorial (x)
	z=[]
	while x>=1
		z.push(x)
		x-=1
	end
	z.inject(1){|num, number| num*number}
end