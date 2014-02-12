# TODO: Load from web

SHOWIT = ->(s) {puts s.inspect}
START_VOWELS = /([aeiou])/i
VOWELS = /(?<!^)([aeiouy])/i

class PigLatin
  def self.translate(str)
    str.split(/(\W+)/).map(&method(:word)).join
  end

  def self.word(w)
    return w unless w =~ /\w/
    return w + 'way' if w[0] =~ START_VOWELS
    cap = w[0] =~ /[A-Z]/
    w = w.downcase.split(VOWELS, 2).rotate.join + 'ay'
    w = w[0].upcase + w[1..-1] if cap
    w
  end
end
