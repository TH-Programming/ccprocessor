#!/usr/bin/env ruby


class InputParser
    attr_accessor :command, :user_name, :amount, :limit, :account_number

    @@all = []

    # Creates a new Input based on # of arguments given
    def initialize(line)
        split = line.split(" ")
        self.command=split[0]
        self.user_name=split[1]

        case split.length
        when 3
            self.amount = split[2]
        when 4
            self.account_number = split[2]
            self.limit = split[3]          
        end

        self.standardize
        @@all << self
    end

    def self.all
        @@all
    end

    #removes dollar sign from amount/limit and returns integer
    def standardize
        self.amount ? self.amount = self.amount.split("").drop(1).join("").to_i : self.amount = nil
        self.limit ? self.limit = self.limit.split("").drop(1).join("").to_i : self.limit = nil
    end

end