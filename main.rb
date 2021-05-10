#!/usr/bin/env ruby
require './lib/account'
require './lib/input_parser'

inputs = $stdin.read.split("\n")

inputs.each{ |input| InputParser.new(input)}

InputParser.all.each do |input|
    case input.command
    when "Add"
        Account.new(input)
    when "Charge"
        Account.lookup(input.user_name).charge(input.amount)
    when "Credit"
        Account.lookup(input.user_name).credit(input.amount)
    end
end

Account.print_all

