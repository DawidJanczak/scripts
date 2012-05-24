#!/usr/bin/env ruby

if (ARGV.size < 1)
  $stderr.puts "Usage: ./rm_swap.rb <path_to_directory>"
  exit 1
end

Dir.glob(File.join(ARGV[0], "**", ".*\.sw*")).each { |f| puts "Deleting #{f}"; File.delete(f) }
