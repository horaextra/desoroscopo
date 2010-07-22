class ForecastsController < ApplicationController
  
  def index
    #expires_in (Time.now.end_of_day - Time.now).seconds, :public => true
    @zoodiacs = Zoodiac.all
    @phrases = pick_phrases
  end

  protected
  
  def pick_phrases
    
    all_phrases = Phrase.all
    return_phrases = []

    @zoodiacs.size.times do
       return_phrases << all_phrases.delete_at(rand(all_phrases.size + 1))
    end
 
    return return_phrases
  end
end
 
