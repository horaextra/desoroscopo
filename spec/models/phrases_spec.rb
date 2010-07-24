require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe Phrases do
  
  it "should be an Array" do
    Phrases.new.should be_kind_of(Array)
  end
  
  describe ".initialize" do

    it "should load phrases" do
      YAML.should_receive(:load_file).with("./models/../db/phrases.yml").and_return(['phrase'])
      phrases = Phrases.new
      phrases.should == ['phrase']
      phrases.instance_variable_get(:@drawn).should == []
    end

  end
  
  describe ".candidates" do

    it "should return all the phrases except the ones that have been drawn already" do
      YAML.should_receive(:load_file).with("./models/../db/phrases.yml").and_return(['phrase', 'another phrase'])
      phrases = Phrases.new
      phrases.instance_variable_set(:@drawn, ['phrase'])
      phrases.candidates.should == ['another phrase']
    end

  end
  
  describe ".select" do
    
    before do 
      YAML.stub!(:load_file).with("./models/../db/phrases.yml").and_return([1, 2, 3, 4, 5, 6])
    end 

    it "should draw from candidates" do    
      phrases = Phrases.new
      drawn = phrases.instance_variable_get(:@drawn)
      drawn.should be_empty
      id = drawn.object_id
      candidates = [1, 2, 3]
      candidates.should_receive(:draw).and_return([1])
      phrases.should_receive(:candidates).and_return(candidates)
      phrases.select.should == 1
      phrases.instance_variable_get(:@drawn).should == [1]
      phrases.instance_variable_get(:@drawn).object_id.should == id
    end

  end
  
end
