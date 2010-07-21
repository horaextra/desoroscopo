require 'spec_helper'

describe PhrasesController do

  describe "GET 'new'" do
     def phrase_mock(stubs = {})
       @mock_phrase ||= mock(Phrase).as_null_object
     end 

     it "should initialize a new 'phrase' object" do
       Phrase.stub!(:new).and_return(phrase_mock)
       get 'new'
       assigns["phrase"].should be_eql(@mock_phrase)
     end
   end
end
