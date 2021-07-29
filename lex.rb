#!/usr/bin/ruby
#Kalil Black
#Program processes each character of file and prints it
#if it is alphabetical, putting each word on a new line
fileString = IO.read(ARGV[0])
chars=fileString.split('')
charflag=false

chars.each { |ch|
    if ch.match(/^[[:alpha:]]$/)
        print ch
        charflag=true
    else 
        if(charflag)
            puts
            charflag=false
        end
    end
    }