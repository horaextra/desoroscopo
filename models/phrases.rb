class Phrases < Array

  def initialize
    replace YAML.load_file(File.dirname(__FILE__) + "/../db/phrases.yml")
    @drawn = []
  end

  def select
    result = candidates.draw.first
    @drawn << result
    result
  end

  def candidates
    self - @drawn
  end

end
