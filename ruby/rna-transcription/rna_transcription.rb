#!/usr/bin/ruby
#Lucian Maly <lucian.maly@oracle.com>

module BookKeeping
 VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  REPLACEMENT = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  def self.of_dna(dna)
    if dna =~ /[^G*,^C*,^T*,^A*]/ then                     # Rubular - http://rubular.com/
      result = ''
     else
      result = dna.gsub(/(G)|(C)|(T)|(A)/) { |char| REPLACEMENT[char] }
    end
  end
end

#puts Complement.of_dna('ACGTGGTCTTAA')
# Should be                    'UGCACCAGAAUU'
#puts Complement.of_dna('UGCAXXXGAAUU')
# Should fail
