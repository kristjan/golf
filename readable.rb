START_VOWELS = /([aeiou])/i
VOWELS = /(?<!^)([aeiouy])/i

class PigLatin
  def self.translate(str)
    str.gsub(/(\w+)/, &method(:word))
  end

  def self.word(w)
    return w + 'way' if w[0] =~ START_VOWELS
    i = w =~ VOWELS
    w = w[i..-1] + w[0...i] + 'ay'
    w = w[0].upcase + w[1..-1].downcase if w =~ /[A-Z]/
    w
  end
end
