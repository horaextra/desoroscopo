require 'spec_helper'

describe Zoodiac do
  
  describe "#all" do

    it "should return all" do
      expected = ["Capricórnio", "Aquário", "Peixes", "Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário"]
      Zoodiac.all.should == expected
    end

  end
  
end
