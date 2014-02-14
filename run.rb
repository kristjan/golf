#!/usr/bin/env ruby

latins = Dir['*.rb'].reject{|file| file =~ /pig_latin|run/}
latins.each do |latin|
  chars = `wc -c #{latin}`.to_i
  puts "Running #{latin} with #{chars} chars"
  `ln -sf #{latin} pig_latin.rb`
  system('rspec pig_latin_spec.rb')
end
`rm pig_latin.rb`
