#!/usr/bin/ruby

exit if ARGV.empty?

puts File.join(Dir.pwd, ARGV[0])
