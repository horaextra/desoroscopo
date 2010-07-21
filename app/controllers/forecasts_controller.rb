class ForecastsController < ApplicationController
  
  def index
    @zoodiacs = Zoodiac.all
    @phrases = Phrase.all
  end

end
 