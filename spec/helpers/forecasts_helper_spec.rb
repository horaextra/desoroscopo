require 'spec_helper'

describe "ForecastsHelper" do  
  
  include ForecastsHelper
  
  it "should returns phrase" do
    phrase = "current phrase"
    prepare_phrase_to_twitter(phrase).should == phrase
  end
  
  it "should reduce phrase until 140 caracters" do
    phrase         = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    phrase_reduced = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad m..."
    prepare_phrase_to_twitter(phrase).should == phrase_reduced
  end
  
  
end