class ForecastsController < ApplicationController
  
  def index
    @zoodiacs = Zoodiac.all
    @phrases = Phrases.new
  end

end
