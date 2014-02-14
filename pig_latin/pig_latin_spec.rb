require File.join(File.dirname(__FILE__), 'pig_latin')

describe PigLatin do
  describe '.translate' do
    it 'translates "cat" to "atcay"' do
      expect(PigLatin.translate('cat')).to eq('atcay')
    end

    it 'translates "apple" to "appleway"' do
      expect(PigLatin.translate('apple')).to eq('appleway')
    end

    it 'translates "school" to "oolschay"' do
      expect(PigLatin.translate('school')).to eq('oolschay')
    end

    it 'translates "Pig" to "Igpay"' do
      expect(PigLatin.translate('Pig')).to eq('Igpay')
    end

    it 'translates "Each" to "Eachway"' do
      expect(PigLatin.translate('Each')).to eq('Eachway')
    end

    it 'translates "yellow" to "ellowyay"' do
      expect(PigLatin.translate('yellow')).to eq('ellowyay')
    end

    it 'translates "rhythm" to "ythmrhay"' do
      expect(PigLatin.translate('rhythm')).to eq('ythmrhay')
    end

    it 'translates "hello world" to "ellohay orldway"' do
      expect(PigLatin.translate('hello world')).to eq('ellohay orldway')
    end

    it 'translates "Hi, Tim." to "Ihay, Imtay."' do
      expect(PigLatin.translate('Hi, Tim.')).to eq('Ihay, Imtay.')
    end

    it 'translates classic literature' do
      original = <<-STR
        It was a dark and stormy night; the rain fell in torrents, except at
        occasional intervals, when it was checked by a violent gust of wind
        which swept up the streets (for it is in London that our scene lies),
        rattling along the house-tops, and fiercely agitating the scanty flame
        of the lamps that struggled against the darkness.
      STR
      original.strip!.gsub!(/\s+/, ' ')
      translation = <<-STR
        Itway asway away arkday andway ormystay ightnay; ethay ainray ellfay
        inway orrentstay, exceptway atway occasionalway intervalsway, enwhay
        itway asway eckedchay ybay away iolentvay ustgay ofway indway ichwhay
        eptsway upway ethay eetsstray (orfay itway isway inway Ondonlay atthay
        ourway enescay ieslay), attlingray alongway ethay ousehay-opstay,
        andway iercelyfay agitatingway ethay antyscay ameflay ofway ethay
        ampslay atthay uggledstray againstway ethay arknessday.
      STR
      translation.strip!.gsub!(/\s+/, ' ')
      expect(PigLatin.translate(original)).to eq(translation)
    end
  end
end
