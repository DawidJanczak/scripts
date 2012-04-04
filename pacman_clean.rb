#!/usr/bin/ruby

packages = `pacman -Qtd`.split.reject { |pkg| pkg =~ /\d+/ }
packages.each { |pkg| system("sudo pacman -Rs #{pkg}") }
