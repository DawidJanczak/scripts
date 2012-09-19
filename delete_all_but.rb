#!/usr/bin/env ruby

force_set = $*.delete("--force")
to_remove = $*.map { |file| file.end_with?("/") ? file[0...-1] : file }

Dir['*'].each { |file| `#{force_set ? "rm -rf" : "rm" } #{file}` unless to_remove.include?(file) }
