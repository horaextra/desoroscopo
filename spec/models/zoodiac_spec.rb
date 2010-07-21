require 'spec_helper'

describe Zoodiac do
  
  describe "#all" do

    it "should return all" do
      expected = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sargitário", "Capricórnio", "Aquário", "Peixes"]
      Zoodiac.all.should == expected
    end

  end
  
end
