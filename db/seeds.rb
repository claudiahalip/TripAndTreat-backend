# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.create(location: "Zakinthos", country: "Greece", date: "July2014", image:"https://scontent-ort2-1.xx.fbcdn.net/v/t31.0-8/10517620_10152594250190450_250556274423989670_o.jpg?_nc_cat=107&_nc_sid=cdbe9c&_nc_ohc=FZLVruORysUAX-t29Qv&_nc_ht=scontent-ort2-1.xx&oh=c3253e12dd42b8f389b42d568c37db20&oe=5F6A84F3")
Trip.create(location: "Suceava", country: "Romania", date: "July2012", image:"https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/60641585_10157007293050450_3294100960955072512_o.jpg?_nc_cat=109&_nc_sid=730e14&_nc_ohc=mX6DRUKbPewAX_n-z0J&_nc_ht=scontent-ort2-1.xx&oh=dbb5da032a10d7b9c1c2dc23bcf37d0f&oe=5F6B6DD1")
Trip.create(location: "Chicago", country: "USA", date: "February2005", image:"https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/72290229_10157390496415450_9154919342012366848_o.jpg?_nc_cat=110&_nc_sid=825194&_nc_ohc=QkNkj5AgZ_4AX9OsYoj&_nc_ht=scontent-ort2-1.xx&oh=925c389eb45d0b648cd9fad4572c0c28&oe=5F69113F" )
Trip.create(location: "Zurich", country: "Switzerland", date: "July2012", image:"https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/37151883_10156332366075450_3409058466461908992_o.jpg?_nc_cat=102&_nc_sid=cdbe9c&_nc_ohc=_jkVp99X1KEAX9rNlMu&_nc_ht=scontent-ort2-1.xx&oh=4c058cadc738a773c54a596c1afda7f3&oe=5F68D195")
Food.create(name:"Moussaka", price: "25.00", rating: "4", description: "Greek oven-bake is based on layers of sautéed aubergine, minced lamb, fried puréed tomato, onion, garlic and spices like cinnamon and allspice, a bit of potato, then a final fluffy topping of béchamel sauce and cheese",trip_id: "1" )
Food.create(name:"Baklava", price: "7.25", rating: "5", description: "honey, filo and ground nuts",trip_id: "1" )
Food.create(name:"Papanasi", price: "3.25", rating: "5", description: "crunchy, oozing with sour cream and blueberry jam",trip_id: "2" )
Food.create(name:"Deep Dish Pizza", price: "12.75", rating: "3", description: "buttery crust, slightly sweet tomato sauce, and a thick layer of cheese",trip_id: "3" )
Food.create(name:"Fondue", price: "15.35", rating: "4", description: "country bread into melted cheeses",trip_id: "4" )
Food.create(name:"Tartiflette", price: "16.79", rating: "5", description: "starchy combination of thinly sliced potatoes, smoky bits of bacon, carmelised onions and oozy, nutty, creamy Reblocohon cheese ",trip_id: "4" )
Food.create(name:"Rosti", price: "19.97", rating: "5", description: "Thinly grated potatoes, pan-fried until crisp and golden",trip_id: "4" )
Food.create(name:"Courgette balls", price: "6.68", rating: "5", description: "grated or puréed courgette blended with dill, mint",trip_id: "1" )