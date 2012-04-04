#!/usr/bin/ruby

to_remove = ARGV.map { |file| file.end_with?("/") ? file[0...-1] : file }
Dir['*'].each { |file| `rm -rf #{file}` unless to_remove.include?(file) }
