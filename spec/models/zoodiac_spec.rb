require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe Zoodiac do
  
  describe "#all" do

    it "should return all" do
      expected = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricórnio", "Aquário", "Peixes"]
      Zoodiac.all.should == expected
    end

  end
  
end
