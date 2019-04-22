#!/usr/bin/env ruby

content = File.open("output.txt", "r") { |file| file.read }
puts content

number = content.to_i

if number == 4
  File.open("output.txt", "w") do |file|
    number = 1
    file.write "#{number}" 
  end
else
  File.open("output.txt", "w") do |file|
    number = number + 1
    file.write "#{number}"
  end
end
