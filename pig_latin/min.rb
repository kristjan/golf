def(PigLatin=?a).translate(s)s.gsub(/\w+/){|w|w[/^[aeiou]/i]?w+'way':(w=w[(i=w=~/(?<!^)[aeiouy]/)..-1]+w[0...i]+'ay'
w=~/[A-Z]/?w[0].upcase+w[1..-1].downcase: w)}end
