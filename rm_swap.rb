#!/usr/bin/ruby

Dir.glob(File.join("**", ".*.sw*")).each { |f| File.delete(f) }
