def loc_part(fraction, len)
	rd = (len/20).floor


	v = Random.new.rand((-rd)..rd) 
	a = (len * fraction).floor + v  

	b = Random.new.rand(0..(len-1)) 

	loc = Loc.create(x: a, y:b)

	loc.id
end





