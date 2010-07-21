require 'spec_helper'

describe ForecastsController do
  
  describe ".index" do

    it "should work" do
      get :index
      response.should be_success
    end

  end
end
