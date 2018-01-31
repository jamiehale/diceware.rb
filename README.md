# Diceware Password Generator

Idea taken from [here](http://www.dicewarepasswords.com/). Generates multiple-word passwords from a wordlist. Uses online random number generator in place of dice. Includes a script to extract your own word list from a text file. (I believe mine was extracted from a Charles Stross book...)

## Usage

    diceware.rb <wordlist file> <count>

Generates `<count>` words in a random order from `<wordlist file>`. Not much to it.

    cat <source file> | ./wordlist.sh

Generates a sorted list of unique words from `<source file>`. Again, not much to it.

## Requirements

diceware.rb requires Ruby 2.2+ and the realrand gem, so:

    gem install realrand

