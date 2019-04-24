#!/usr/bin/env ruby

# read file "output.txt" and print the current count
content = File.open("output.txt", "r") { |file| file.read }
puts content

# increment the count in 1
# update file with new content
number = content.to_i
File.open("output.txt", "w") do |file|
  number = number + 1
  file.write "#{number}"
end
