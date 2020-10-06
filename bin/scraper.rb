#!/usr/bin/env ruby
require_relative '../lib/constants.rb'
require_relative '../lib/program_methods.rb'
require 'open-uri'

def intro
  puts 'Welcome! This program will guide you about 27 top tourist attractions in India.'
  puts '------------------------------'
  puts 'India is the world’s seventh-largest country stretching from the high mountains
  of the Himalayas to the tropical greenery of Kerala, and from the sacred Ganges to the
  sands of the Thar desert. Its more than one billion inhabitants are divided into two
  thousand ethnic groups and speak over 200 different languages'
  puts '-----------------------------------'
  puts 'Please enter any number between 1 to 27 to see the attraction and details about it.'
end

def take_input
  program = Program.new
  input = ''
  loop do
    puts 'Please enter any number between 1 to 27.'
    input = gets.chomp.to_i
    break if program.verify_ui(input)
  end
  puts 'Fetching details......'
  dest = program.scraper(input)
  puts "Your selected destination is #{dest}."
  puts '-------------------------------------------------'
  puts 'Getting the destination details....'
  puts '-------------------------------------------------'
  puts program.destination_details(input)
  puts '-------------------------------------------------'
  extra
end

def extra
  puts 'Would you like to see some more destinations.'
  puts 'Yes or No'
  user_choice = ''
  until user_choice.match?(/^yes$|^no$/)
    puts 'Please type YES or NO' if user_choice != ''
    user_choice = gets.chomp.downcase
  end

  if user_choice == 'yes'
    puts "\nWelcome back!\n"
    puts '------------------------------'
    take_input
  else
    puts 'Thanks for using the app. Hope you liked it!!'
    puts '-------------------------------'
  end
end

intro
take_input
