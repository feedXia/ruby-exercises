players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

players_by_sport = {}

players.each do |player|
  sport = player[:sport]
  name  = player[:name]

  if players_by_sport[sport] == nil
    players_by_sport[sport] = [name]
  else
    players_by_sport[sport].push(name)
  end
end

puts players_by_sport