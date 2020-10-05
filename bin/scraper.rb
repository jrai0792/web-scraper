#!/usr/bin/env ruby
# rubocop:disable Layout/LineLength
require_relative '../lib/constants.rb'
require_relative '../lib/program_methods.rb'

program = Program.new
puts 'Welcome! This program will guide you about 27 top tourist attractions in India.'
puts '------------------------------'
puts 'India is the world’s seventh-largest country stretching from the high mountains 
of the Himalayas to the tropical greenery of Kerala, and from the sacred Ganges to the
 sands of the Thar desert. Its more than one billion inhabitants are divided into two 
 thousand ethnic groups and speak over 200 different languages'
puts '-----------------------------------'
puts 'Please enter any number between 1 to 27 to see the attraction and details about it.'


def verify_ui(user_input)
  if user_input <28 && user_input >= 1
    return true
  else
    return false
  end
end

def take_input
  loop do
    puts 'Please enter any number between 1 to 27.'
    input = gets.chomp.to_i
    break if verify_ui(input)
  end
end

take_input
program.scraper

# rubocop:enable Layout/LineLength
