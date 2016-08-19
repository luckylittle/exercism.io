#!/usr/bin/ruby
#Lucian Maly <lucian.maly@oracle.com>
#Write a program that will calculate the date that someone turned or will celebrate their 1 Gs anniversary.
#A gigasecond is one billion (10**9) seconds.
#require 'date'

module BookKeeping
 VERSION = 3 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(input)
    @input = input
    epoch = input.strftime("%s").to_i
    gigasecond = 1000000000 #10^9s = 1,000,000,000s
    enddateepoch = epoch + gigasecond
    #puts "#{epoch}" + '+' + "#{gigasecond}" + '=' + "#{enddateepoch}"
    result = Time.at("#{enddateepoch}".to_i)
  end
end

#puts Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
#puts "Correct time should be:"
#puts "Thu Jan 01 01:46:40 +1100 2043 in UTC"
