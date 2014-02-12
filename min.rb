def(PigLatin=?a).translate(s)s.gsub(/\w+/){|w|w[/^[aeiou]/i]?w+'way':(w=(w.split(/([aeiuoy])/)-['']).rotate.join+'ay'
w=~/[A-Z]/?w[0].upcase+w[1..-1].downcase: w)}end
