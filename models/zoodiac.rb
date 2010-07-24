class Zoodiac
  
  def self.all
    YAML.load_file(File.expand_path(File.dirname(__FILE__) + "/../db/zoodiacs.yml"))
  end
  
end