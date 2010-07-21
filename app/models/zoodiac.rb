class Zoodiac
  
  def self.all
    YAML.load(File.read("#{RAILS_ROOT}/db/zoodiacs.yml"))
  end
  
end