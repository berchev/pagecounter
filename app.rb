#!/usr/bin/env ruby

content = File.open("output.txt", "r") { |file| file.read }
puts content

number = content.to_i
File.open("output.txt", "w") do |file|
  number = number + 1
  file.write "#{number}"
end
