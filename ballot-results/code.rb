# build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end
candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

# list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"
  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end
  puts ""
end

# How many people voted in precinct 1?
sum = 0
vote_results[0].each do |vote_total|
  sum += vote_total
end
puts "#{sum} people voted in Precinct 1."

# Who was the winning candidate in Precinct 4?
most_votes = 0
winner = nil
vote_results[3].each_with_index do |vote_total, count|
  if vote_total > most_votes
    most_votes = vote_total
    winner = candidates[count]
  end
end
puts "#{winner} won Precinct 4."

# How many people voted for Mary Sue?
sum = 0
vote_results.each do |precinct_totals|
  sum += precinct_totals[0]
end
puts "#{sum} people voted for Mary Sue."

# How many people voted for Billy Joe?
sum = 0
vote_results.each do |precinct_totals|
  sum += precinct_totals[2]
end
puts "#{sum} people voted for Billy Joe."

# How many people voted for Sally Jane?
sum = 0
vote_results.each do |precinct_totals|
  sum += precinct_totals[1]
end
puts "#{sum} people voted for Sally Jane."

# How many people voted in total?
sum = 0
vote_results.each do |precinct_totals|
  precinct_totals.each do |candidate_precinct_total|
    sum += candidate_precinct_total
  end
end
puts "#{sum} people voted in total."

# Who had the most votes?
mary_total = 0
sally_total = 0 
billy_total = 0
vote_results.each do |precinct_totals|
  mary_total += precinct_totals[0]
  sally_total += precinct_totals[1]
  billy_total += precinct_totals[2]
end
candidate_totals = [mary_total, sally_total, billy_total]
most_votes = 0
winner = ""
candidate_totals.each_with_index do |candidate_total, count|
  if candidate_total > most_votes
    most_votes = candidate_total
    winner = candidates[count]
  end
end
puts "#{winner} won the election."


