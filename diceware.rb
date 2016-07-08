#! /usr/bin/env ruby

require 'random/online'
require 'optparse'

def usage
  puts "Usage: diceware.rb wordlist count"
  exit
end

def word_list(filename)
  File.read(filename).lines.inject([]){ |list,line| list << line.chomp }
end

usage if ARGV.size != 2

word_list_filename = ARGV.shift
word_count = ARGV.shift.to_i

generator = RealRand::RandomOrg.new

all_words = word_list(word_list_filename)

puts generator.randnum(word_count, 0, all_words.size - 1).map{|i| all_words[i]}.join(' ')
