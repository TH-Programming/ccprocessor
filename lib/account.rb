#!/usr/bin/env ruby
require 'luhn'

class Account
    attr_accessor :user_name, :account_number, :limit, :balance
    @@all = []
    
    def initialize(input)
        @user_name = input.user_name
        @account_number = input.account_number
        @limit = input.limit
        @balance = self.validateCardNumber()
        @@all.push(self)
    end

    # searches @@all fo account by user_name
    def self.lookup(name)
        @@all.select{|account| account.user_name == name}[0]
    end

    #returns array of all accounts
    def self.all 
        @@all
    end

    #iterates @@all and prints each account to the terminal
    def self.print_all
        @@all.each do |account|
            puts "#{account.user_name}: #{account.balance_to_string}"
        end
    end

    #adds to balance if result is not > limit
    def charge(amount)
        unless self.balance == "error" || self.balance + amount > self.limit 
            self.balance += amount
        end
    end

    #subtracts from balance
    def credit(amount)
        unless self.balance == "error"
            self.balance -= amount
        end
    end

    def balance_to_string
        self.balance == "error" ? self.balance : "$#{self.balance}"
    end

    #validates provided credit card number and sets balance accordingly
    def validateCardNumber()
        self.account_number.valid_luhn? ? 0 : "error"
    end

end