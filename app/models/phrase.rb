class Phrase
  
  def self.all
    @phrases ||= YAML.load(File.read("#{RAILS_ROOT}/db/phrases.yml"))
  end
  
end