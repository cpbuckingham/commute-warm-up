require 'csv'



commuters = CSV.read('data/gschool_commute_data.csv', headers:true)

["Person" ,"Week" ,"Day" ,"Mode" ,"Inbound" ,"Outbound" ,"Distance"]


# CSV.foreach('gschool_commute_data.csv') do |row|
#   puts row.inspect
# end


commuters.each do |commuter_row|
  p commuter_row

end



 