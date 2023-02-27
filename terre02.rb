#!/usr/bin/env ruby

# Create a program :
#   that displays the arguments it receives line by line,
#   regardless of the number of arguments..
# Langage : Ruby
# Exec Command in Shell : ruby terre02.rb arg1 arg2 "arg3"

ARGV.each do|a|
  puts "#{a}"
end
