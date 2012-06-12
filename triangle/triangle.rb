#!/usr/bin/env ruby

class Triangle
  def self.max(n, ai)
    ai.map! {|i| i.to_i }
    ai.combination(3).map do |a, b, c|
      sum = a + b + c
      m = [a, b, c].max
      sum > 2 * m ? sum : 0
    end.max
  end
end

if __FILE__ == $0
  n = ARGV.shift
  puts Triangle.max(n, ARGV)
end
