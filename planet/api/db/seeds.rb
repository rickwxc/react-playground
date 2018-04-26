# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require './db/scripts/loc_seeder'


Player.create([
  {name: "Rick"},
  {name: "Taoli"},
])

minerals = Mineral.create([
  {name: "Oxygen"},
  {name: "Water"}, #1
  {name: "Uraninite"},#2
  {name: "Petroleum"},#3
  {name: "Gold"},#4
  {name: "Silver"},#5
  {name: "Copper"},#6
  {name: "Iron"},#7
  {name: "Gas"},#8
  {name: "Crystal"},#9
  {name: "Time(sec)"},#10
])

stars = Star.create([
  {name: "Mars", width:100, length: 800}
])


Star2mineral.create([
	#Crystal
	{star_id:stars[0].id,  mineral_id:minerals[9].id, loc_id:loc_part(0.333, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[9].id, loc_id:loc_part(0.666, stars[0].length), max_qty:10},

	#gas
	{star_id:stars[0].id,  mineral_id:minerals[8].id, loc_id:loc_part(0.333, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[8].id, loc_id:loc_part(0.666, stars[0].length), max_qty:10},

	#water
	{star_id:stars[0].id,  mineral_id:minerals[1].id, loc_id:loc_part(0.333, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[1].id, loc_id:loc_part(0.666, stars[0].length), max_qty:10},

	#copper
	{star_id:stars[0].id,  mineral_id:minerals[6].id, loc_id:loc_part(0.3, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[6].id, loc_id:loc_part(0.7, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[6].id, loc_id:loc_part(0.3, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[6].id, loc_id:loc_part(0.7, stars[0].length), max_qty:10},

	#sliver
	{star_id:stars[0].id,  mineral_id:minerals[5].id, loc_id:loc_part(0.4, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[5].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[5].id, loc_id:loc_part(0.4, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[5].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},

	#gold
	{star_id:stars[0].id,  mineral_id:minerals[4].id, loc_id:loc_part(0.4, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[4].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[4].id, loc_id:loc_part(0.4, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[4].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},

	#iron
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.2, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.8, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.2, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.8, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.2, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.8, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.2, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.8, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.2, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[7].id, loc_id:loc_part(0.8, stars[0].length), max_qty:10},

	#petro
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.3, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.3, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.3, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[3].id, loc_id:loc_part(0.6, stars[0].length), max_qty:10},

	#u
	{star_id:stars[0].id,  mineral_id:minerals[2].id, loc_id:loc_part(0.5, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[2].id, loc_id:loc_part(0.5, stars[0].length), max_qty:10},
	{star_id:stars[0].id,  mineral_id:minerals[2].id, loc_id:loc_part(0.5, stars[0].length), max_qty:10},


])


