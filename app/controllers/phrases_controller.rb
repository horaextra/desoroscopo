class PhrasesController < ApplicationController
  
  def new
    @phrase = Phrase.new 
  end

end
