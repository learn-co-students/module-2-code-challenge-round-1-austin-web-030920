Heroine.destroy_all
Power.destroy_all

powers = [
  {name: "super strength", description: "gives the wielder super-human strengths" },
  {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel"},
  {name: "Doreen Green", super_name: "Squirrel Girl" },
  {name: "Gwen Stacy", super_name: "Spider-Gwen" },
  {name: "Janet Van Dyne", super_name: "The Wasp" },
  {name: "Wanda Maximoff", super_name: "Scarlet Witch" },
  {name: "Carol Danvers", super_name: "Captain Marvel" },
  {name: "Jean Grey", super_name: "Dark Phoenix" },
  {name: "Ororo Munroe", super_name: "Storm" },
  {name: "Kitty Pryde", super_name: "Shadowcat" },
  {name: "Elektra Natchios", super_name: "Elektra" }
]

powerless_heroines = heroines.map { |heroine| Heroine.create(heroine) }
powerless_heroines.each do |heroine| 
  rand(1..2).times do
    available_powers = Power.all - heroine.powers
    heroine.powers << available_powers[rand(0..available_powers.count)]
    binding.pry
  end
end

