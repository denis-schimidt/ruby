require "#{File.expand_path('lib/string_analyser')}"

describe StringAnalyzer do
  describe '#has_vowels' do

    it 'should detect when a string contains vowels' do
      sa = StringAnalyzer.new
      test_string = 'uuu'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should detect when a string doesn\'t contain vowels' do
      sa = StringAnalyzer.new
      test_string = 'bcdfg'
      expect(sa.has_vowels? test_string).to be false
    end

    it 'should return false when a string is empty' do
      sa = StringAnalyzer.new
      test_string = ''
      expect(sa.has_vowels? test_string).to be false
    end

    it 'should return false when a string is nil' do
      sa = StringAnalyzer.new
      test_string = nil
      expect(sa.has_vowels? test_string).to be false
    end

    it 'should return true when a string has vowels in upcase' do
      sa = StringAnalyzer.new
      test_string = 'AzzlllEEE'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should return true when a string has vowels in lowercase' do
      sa = StringAnalyzer.new
      test_string = 'uuuzzllliii'
      expect(sa.has_vowels? test_string).to be true
    end

    it 'should return true when a string has vowels ans special characters' do
      sa = StringAnalyzer.new
      test_string = '423432%%%^&U'
      expect(sa.has_vowels? test_string).to be true
    end
  end
end