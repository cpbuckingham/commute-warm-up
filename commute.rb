require 'csv'

# hash= {}
commuters = CSV.read('data/gschool_commute_data.csv', headers: true)
# # # CSV.foreach('data/gschool_commute_data.csv', { :col_sep => ';' }) { |row| p row }
# # p commuters
#
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

CSV.foreach('data/gschool_commute_data.csv') do |row|
  p row.inspect
end

# CSV.parse(File.read('data/gschool_commute_data.csv'))


