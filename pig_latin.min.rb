V=/([aeiuoy])/
U=/[aeiou]/i
def(PigLatin=?a).translate(s)
s.gsub(/\w+/){|w|
w[0]=~U ? w+'way':
(w=(w.split(V,2)-['']).rotate.join+'ay'
w=~/[A-Z]/?w[0].upcase+w[1..-1].downcase: w)}
end
