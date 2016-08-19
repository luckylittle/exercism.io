#!/usr/bin/ruby
#Lucian Maly <lucian.maly@oracle.com>
#Write a program that will calculate the date that someone turned or will celebrate their 1 Gs anniversary.
#A gigasecond is one billion (10**9) seconds.
require 'date'

module BookKeeping
 VERSION = 3 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(date)
    @date = date
    epoch = date.strftime("%s").to_i
    gigasecond = 10^9.to_i
    enddateepoch = ("#{epoch}" + "#{gigasecond}").to_i
    result = Time.at(enddateepoch)
  end
end

#puts Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))
