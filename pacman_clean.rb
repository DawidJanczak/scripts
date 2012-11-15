#!/usr/bin/env ruby

`pacman -Qtd`.split.each { |pkg| system("sudo pacman -Rs #{pkg}") unless pkg[/^\d+/] }
