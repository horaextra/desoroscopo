module ForecastsHelper
  def prepare_phrase_to_twitter(phrase)
    #TODO: falta quebrar na última palavra
    phrase = phrase.first(137) + "..." if phrase.length > 140
    phrase
  end
end
