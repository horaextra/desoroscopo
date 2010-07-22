class ForecastsController < ApplicationController
  
  def index
    #expires_in (Time.now.end_of_day - Time.now).seconds, :public => true
    @zoodiacs = Zoodiac.all
    
    # o array.draw(12) não funfa... tem repetição...        

    all_phrases = Phrase.all
    @phrases = []
    @zoodiacs.size.times do
      @phrases << all_phrases.delete(all_phrases[rand(all_phrases.size)])
    end
  end

end

