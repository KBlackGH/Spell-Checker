#!/usr/bin/ruby
#Kalil Black
#Runs all subprocesses necessary to perform spell Checking
require 'open3'
spellCheck = "./lex.rb " + ARGV[0] + " | sort -f | uniq -i | ./compare.rb "
spellCheck += ARGV[1] + " " + ARGV[2]
Open3.capture3(spellCheck)
#ruby lex.rb document.txt | sort -f | uniq -i 
#| ./compare.rb dictionary.txt report.txt