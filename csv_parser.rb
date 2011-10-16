filename = "loc.txt"
file = File.new(filename, 'r')

#header = file.get_line("\n")
#puts header
file.each_line("\n") do |row|
  #puts row[0]
  #puts row[1]
  columns = row.split(",")
  temp_loc = Location.new
  temp_loc.name = columns[1].delete("\"")
  temp_loc.address= columns[2].delete("\"")
  temp_loc.lat = columns[35]
  temp_loc.long = columns[36]
  puts temp_loc.save
end

