Event.destroy_all

event_list = [
  [ "knit.jpg", "To Knit", "Knit Purl", "2018-01-05 07:00:00", 35, "Learn how to knit your very own scarf. We will supply all materials." ],
  ["fish.jpg", "To Fish", "Fish Hatchery", "2018-01-10 12:00:00", 25, "Learn how to fish. We will supply all fishing materials."],
  ["pasta.jpg", "To Make Fresh Pasta", "Grassa", "2018-01-08 06:00:00", 20, "Learn how to make your own pasta. We will supply all materials. You will get dinner out of this event using your very own pasta"],
  ["wreath.jpg", "To Make a Wreath", "Fieldwork Flowers & Plants", "2017-12-21 06:00:00", 40, "Learn how to make a wreath. Just in time for the holidays. All supplies provided. Go home with your very own wreath to keep."],
  ["caligraphy.jpg", "To Write Caligraphy", "Ecru Moder Stationer", "2017-01-03 06:00:00", 15, "Learn how to write caligraphy. All supplies provided. Go home with your own pen."],
  ["soap.jpg", "To Make Your Own Natural Soaps", "Lush NW", "2017-01-10 06:30:00", 25, "Learn how to make your own natural soaps. All supplies provided. Go home with your own bar of soap."],
  ["code.jpg", "To Code the Basics", "Epicodus", "2017-01-06 06:00:00", 10, "Learn how to code basic HTML and CSS. Computers provided. You will have a basic website by the end of the event. Check it out to see if you like programming!"],
  ["budget.jpg", "To Budget", "Chase Finance, 5th and Washington", "2017-01-11 05:30:00", 10, "Learn how to budget. Go into 2018 making better financial choices. This will mostly be a talk seminar. Note taking materials will be provided."],
  ["bread.jpg", "To Make Bread from scratch", "Tabor Bread", "2017-01-08 05:30:00", 25, "Learn how to make bread from scratch. All supplies provided. Go home with your very own loaf of bread."],
  ["macs.jpg", "To Make Macarons", "Hungry Heart Bakery", "2017-01-15 05:30:00", 25, "Learn how to make macarons from scratch. All supplies provided. Go home with a 6 pack of multi-flavored macarons."],
  ["pickling.jpg", "To Pickle Vegetables", "Hollywood Farmers Market", "2017-01-05 12:30:00", 20, "Learn how to pickle vegetables. All supplies provided. Go home with a mason jar of your pickled vegetable of choice."],
  ["pottery.jpg", "To Make Pottery", "Pottery Fun", "2017-01-13 05:30:00", 25, "Learn how to make a dish of your choice. All supplies provided. Go home with your very own dish."],
  ["meditate.jpg", "To Meditate", "The People's Yoga SE", "2017-01-20 05:30:00", 10, "Learn how to meditate. All supplies provided. Go home feeling relaxed and focused"]
]

event_list.each do |image, name, location, date, price, description|
  event = Event.create!( image: image, name: name, location: location, date: date, price: price, description: description )
end

p "Created events"
