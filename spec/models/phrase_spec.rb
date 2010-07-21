require 'spec_helper'

describe Phrase do
  
  describe ".all" do

    it "should return all" do
      File.stub!(:read).with("#{RAILS_ROOT}/db/phrases.yml").at_least(:once).and_return("- Phrase")
      # Phrase.all.should == ['Phrase']
      Phrase.all
    end

  end
  
end
