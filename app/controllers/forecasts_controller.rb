class ForecastsController < ApplicationController
  
  def index
    expires_in (Time.now.end_of_day - Time.now).seconds, :public => true
    @zoodiacs = Zoodiac.all
    @phrases = Phrase.all
  end

end
 