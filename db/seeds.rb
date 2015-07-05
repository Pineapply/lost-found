# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Missing.create(name: "Red book left on 109 tram", description: "Book with red stickers on the cover. It's not very expensive but has sentimental value to me personally :( Please return if found", type:"Missing", thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/red-book.jpeg" )
Missing.create(name: "Umbrella", description: "Hi... I left my black umbrella. Has anyone seen it???", type:"Missing", thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/black-umbrella.jpeg")
Missing.create(name: "Floral fabric wallet", description: "Floral fabric wallet left on tram (or tram stop?).", type:"Missing",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/floral-wallet.jpeg")
Missing.create(name: "iPhone in pink case", description: "Have been reported to Telstra as missing so IMEI is blocked. Please return as I needed the photos. Thank you in advance.", type:"Missing",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/pink-iphone.jpeg")
Missing.create(name: "Laptop", description: "Macbook-pro 15 inches with Github sticker on the cover", type:"Missing",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/laptop.jpeg")

Reported.create(name: "Found a book with red stickers left on tram this morning", description: "Found a book with red stickers, handed in to the tram driver. Good luck!", type:"Reported",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/red-book.jpeg")
Reported.create(name: "Found old gameboy (was in blue bag)", description: "Someone accidentally left blue bag with an old gameboy and magazine inside. It's with Yarra Trams now.", type:"Reported",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/gameboy.jpg")
Reported.create(name: "Stripey blue jacket, the brand is PIGU", description: "Looks like an expensive brand. The jacket is woolen, stripey navy blue with zip.", type:"Reported",thumbnail: "https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/stripey_jacket.jpeg")
