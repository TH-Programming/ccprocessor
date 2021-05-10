This is a simple credit card proccessor application.

To use this program:
1. Clone to your local machine.
2. cd into the ccprocessor folder.

At this point you have 2 options to run this program:

A) Providing arguments manually
1. Type "./main.rb"
2. Type as many program commands as needed, presing "enter" between each command"
3. press CTRL + D when finished entering commands and the program will run.

B) Providing arguments from a .txt file
1. type "./main.rb < yourTextFile.txt" and press enter.


COMMANDS: all commands are space delimited

Add(Name, Card #, limit) - adds a new credit card. Cards are Luhn10 validated.

-i.e.: Add Tyler 48524885213 $300


Charge(Name, Amount) - charges the amount to the account specified.

-i.e.: Charge Tyler $200


Credit(Name, Amount) - Credits the amount to the account specified.

-i.e.: Credit Tyler $100

After running the program it will log all accounts and balances to the terminal.