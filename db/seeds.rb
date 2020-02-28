Market.create([
  {name: "C-Town", info: "C-Town Supermarkets is a chain of independently owned and operated supermarkets operating in the northeastern United States. C-Town was founded in 1975. C-Town uses economies of scale so its small member stores can pool their resources for purchasing and advertising.", fruits: "-Lemon"},
  {name: "Whole Foods", info: "Whole Foods Market Inc. is an American multinational supermarket chain headquartered in Austin, Texas, which exclusively sells products free from hydrogenated fats and artificial colors, flavors, and preservatives.", fruits: "-Grape"}
])

Review.create([
  {market_id:1, name: "James", content: "It's decent"},
  {market_id:2, name: "Tommy", content: "It's good"}
])