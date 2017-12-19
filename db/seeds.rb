Event.destroy_all

event_list = [
  [ "knit.jpg", "To Knit", "Knit Purl", "2018-01-05 07:00:00", 35, "Learn how to knit your very own scarf. We will supply all materials." ],
  ["fish.jpg", "To Fish", "Fish Hatchery", "2018-01-10 12:00:00", 25, "Learn how to fish. We will supply all fishing materials."],
  ["pasta.jpg", "To Make Fresh Pasta", "Grassa", "2018-01-08 06:00:00", 20, "Learn how to make your own pasta. We will supply all materials. You will get dinner out of this event using your very own pasta"],
  ["wreath.jpg", "To Make a Wreath", "Fieldwork Flowers & Plants", "2017-12-21 06:00:00", 40, "Learn how to make a wreath. Just in time for the holidays. All supplies provided. Go home with your very own wreath to keep."]
]

event_list.each do |image, name, location, date, price, description|
  Event.create( image: image, name: name, location: location, date: date, price: price, description: description )
end
