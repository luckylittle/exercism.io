#!/usr/bin/ruby
#http://exercism.io/exercises/ruby/hamming/test-suite
#Lucian Maly <lucian.maly@oracle.com>
#================================
module BookKeeping
 VERSION = 3 # Where the version number matches the one in the test.
end
#================================
class Hamming
  def self.compute(str1,str2)
    @str1 = str1.chars.to_a
    @str2 = str2.chars.to_a
    l1 = @str1.length
    l2 = @str2.length
    num = 0
    #print @str1
    #print @str2
   if l1 < l2
    raise ArgumentError, 'Strings are not equally long'
   elsif l1 > l2
    raise ArgumentError, 'Strings are not equally long'
   else
   @str1.each_index do |item1|
        compare = str1[item1] <=> str2[item1]
        if not compare == 0 then num +=1 end
    end
    num
  end
 end
end

#================================
#Hamming.compute('GAGCCTACTAACGGGAT','CATCGTAATGACGGCCT')
#Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')
=begin
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
7 differences
=end



