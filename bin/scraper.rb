#!/usr/bin/env ruby
# rubocop:disable Layout/LineLength
require_relative '../lib/constants.rb'
require_relative '../lib/program_methods.rb'

program = Program.new
puts 'Welcome! This program will guide you about the tourist places in the different states of India.'
puts '------------------------------'
puts 'India, a union of states, is a sovereign, socialist, secular and democratic republic with a Parliamentary system of Government.
      A union territory is a type of administrative division in India which is ruled directly by the Union government (Central Government).
      Hence, it is called the "union territory".
      There are 28 states in India and 8 union territories.India is great land of tourism.'
puts 'Here list of names of states and union territories.'
puts 'States'
program.states
puts '-----------------------------------'
puts 'Union Territories'
program.union_territories
puts '-----------------------------------'
# rubocop:enable Layout/LineLength
