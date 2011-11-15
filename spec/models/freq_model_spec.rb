require 'spec_helper'

describe Freq do
  describe '#tokens' do
    before(:each) do
      fm = Freq.new('The quick brown fox jumped over the lazy dog.')
      @tokens = fm.tokens
    end

    it 'should split tokens on whitespace' do
      @tokens.each do |token|
        (/\s/ =~ token).should == nil
      end
    end

    it 'should return the proper number of tokens' do
      @tokens.length.should == 9
    end

    it 'should normalize the tokens by lower casing them' do
      @tokens.each do |token|
        (/[A-Z]/ =~ token).should == nil
      end
    end
  end
end

