#!/usr/bin/ruby

if ARGV.empty?
  $stderr.puts "Usage: ./filename.rb <filename>"
  exit 1
end

puts File.join(Dir.pwd, ARGV[0])
