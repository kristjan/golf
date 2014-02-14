#!/usr/bin/env ruby

latins = Dir['*.rb']
  .reject{|file| file =~ /pig_latin|run/}
  .map{|latin| [latin, `wc -c #{latin}`.to_i]}
  .sort_by(&:last)
  .reverse

latins.each do |latin, size|
  puts "\e[32m\nRunning #{latin} with #{size} chars\e[0m"
  `ln -sf #{latin} pig_latin.rb`
  system('rspec pig_latin_spec.rb')
end

`rm pig_latin.rb`
