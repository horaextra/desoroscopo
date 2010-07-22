require 'spec_helper'

describe Phrases do
  
  it "should be an Array" do
    Phrases.new.should be_kind_of(Array)
  end
  
  describe ".initialize" do

    it "should load phrases" do
      YAML.should_receive(:load_file).with("db/phrases.yml").and_return(['phrase'])
      Phrases.new.should == ['phrase']
    end

  end
  
end
