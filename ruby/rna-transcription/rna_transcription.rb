#!/usr/bin/ruby
#Lucian Maly <lucian.maly@oracle.com>

module BookKeeping
 VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  REPLACEMENT = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  def self.of_dna(dna)
    result = dna.gsub(/(G)|(C)|(T)|(A)/) { |char| REPLACEMENT[char] }
    #result = dna.gsub('G', 'C').gsub('C', 'G').gsub('T', 'A').gsub('A', 'U') - this will be chaining it!
  end
end

puts Complement.of_dna('ACGTGGTCTTAA')
# Should be                    'UGCACCAGAAUU'
