require 'csv'


table = CSV.foreach('data/gschool_commute_data.csv', headers: true)
new = table.map do |row|
   row.to_h
end
data =  new.group_by { |row| row["Person"] }

data["Nate"].each do |row|
  p "Nate's inbound commute on Week 4 Wednesday was #{row["Inbound"].to_i} minutes" if row["Week"] == "4" && row["Day"] == "Wednesday"
end

total = 0
data.each do |k,v|
  v.each do |row|
    total += (row["Inbound"].to_i + row["Outbound"].to_i)
  end
end

p "Average total commute: #{total/(data.count)/(data["Emily"].count)} minutes"

fastest = []

data.each do |k,v|
  time = 0
  v.each do |row|
    time += (row["Inbound"].to_i + row["Outbound"].to_i)
  end
  fastest << [k, time/20]
end

who_won = fastest.sort_by{|times| times[1]}

p "The shortest commute was #{who_won[0][0]}, her average commute was: #{who_won[0][1]} minutes."

#
# data =  new.group_by { |row| row["Person"] }
#
# data.each do |k,v|
#   v.each do |row|
#     row.delete("Person")
#   end
# end
# p data



# customer[:Nate].each do |row|
#   p "Nate's inbound commute on Week 4 Wednesday was #{row["Inbound"].to_i} minutes" if row["Week"] == "4" && row["Day"] == "Wednesday"
# end

# CSV.parse(File.read('data/gschool_commute_data.csv'))

# hash= {}
# commuters = CSV.read('data/gschool_commute_data.csv', headers: true)
# # # CSV.foreach('data/gschool_commute_data.csv', { :col_sep => ';' }) { |row| p row }
# # p commuters
#
# p hash

# commuters.each do |commuter|
#   hash[commuter[0]] = commuter.to_h
# end
# hash.each do |key, value|
#   p value
#   p key
# end

# CSV.foreach('data/gschool_commute_data.csv') do |row|
#     p hash[row[0]]
# end

# people.each do |person|
#   hash[person[0]] = person
# end
#
# p hash
# commuters.each do |commuter_row|
#   p commuter_row
#
# end

# commuters.each do |commuter_row|
#   p commuter_row["Person"]
#
# end

