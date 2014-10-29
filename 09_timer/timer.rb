class Timer
	def seconds
		0
	end
	def seconds=(n)
		$n=n
	end
	def time_string
		h=$n/3600
		m=($n-h*3600)/60
		s=$n-(h*3600)-(m*60)
		h<10 ? h="0"+h.to_s : h
		m<10 ? m="0"+m.to_s : m
		s<10 ? s="0"+s.to_s : s
		h.to_s+":"+m.to_s+":"+s.to_s
	end
end