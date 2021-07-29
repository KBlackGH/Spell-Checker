This program is the Ruby version of the spell check made in C.
spellCheck.rb connects lex.rb and compare.rb without explicit
use of pipes and forks, put rather directly runs the script
'ruby ./lex.rb DOC.txt | sort -f | uniq -i | ./compare.rb DICT.txt REPORT.txt'
To use spellCheck.rb, run the command
'ruby spellCheck.rb DOC.txt DICT.txt REPORT.txt'
where order of text files matter, but name does not
A dictionary file has been provided, as well as a sample document file

Note:
If ruby not installed, run 'sudo apt-get install ruby-full'
Program uses linux commands