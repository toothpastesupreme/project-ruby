class Book
	def title=(words)
		@words=words
		def title
			y=@words.split
			z=[]
			ignore=%w[a an in of and the]
			y.each_with_index do|n, y|
				if y==0
					z.push(n.capitalize)
				elsif y>0&&ignore.include?(n)
					z.push(n.downcase)
				else
					z.push(n.capitalize)
				end
			end
			z.join(" ")
		end
	end
end