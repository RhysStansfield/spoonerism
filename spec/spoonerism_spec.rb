require 'spoonerism'

describe Spoonerism do

  context 'Switching word beginnings' do

    let(:spooner) {Spoonerism.new('spoon')}
    let(:booner) {Spoonerism.new('spoon fork')}

    it 'can get the first two letters from a word' do
      expect(spooner.first_two).to eq 'sp'
    end

    it 'can switch the first two letters from a word' do 
      expect(spooner.switch_first_two).to eq 'ps'
    end

    it 'can switch the first two letters of two words' do
      expect(booner.switch_word_beginnings).to eq 'Fpoon sork'
    end

    it 'can switch the first two letters of each word' do 
      expect(booner.switch_word_beginnings(2)).to eq 'Fooon sprk'
    end

  end
end