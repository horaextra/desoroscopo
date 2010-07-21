require 'spec_helper'

describe Phrase do
  
  describe ".all" do

    it "should return all" do
      Phrase.all.should == []
    end

  end
  
end
