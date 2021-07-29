#!/usr/bin/ruby
#Kalil Black
#Reads stdin for words, then takes dictionary as array to only 
#loop through it once, then checks stdin against dictionary to
#perform spell checking
words=STDIN.read
dictArr=[]
IO.readlines(ARGV[0]).each do |dictWord|
   dictArr << dictWord.delete("\n").downcase
end
currDoc=""
currDict=""
n=0
File.open(ARGV[1], 'w') { |outFile|
   outFile << ("Spell Checking Results\n")
   words.each_line do |docWord|
      currDoc=docWord.strip
      if(currDict.downcase==currDoc.downcase)
         outFile << ("'" + currDoc + "' is spelled correctly\n")
         next
      end
      while(n<dictArr.length)
        currDict=dictArr[n]
        currDict=currDict.strip
        n=n+1
        if(currDict.downcase==currDoc.downcase)
          outFile << ("'" + currDoc + "' is spelled correctly\n")
          break
        elsif(currDict.casecmp(currDoc)>0)
          outFile << ("\t'" + currDoc + "' is not spelled correctly\n")
          break
        else
        end
      end
    end
}