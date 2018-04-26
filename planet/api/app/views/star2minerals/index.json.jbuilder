json.array! @star2minerals  do |s|

	json.mineral_id s.mineral_id
	json.name s.mineral.name
	json.x s.loc.x
	json.y s.loc.y
	json.max_qty s.max_qty


end
