module WebratHelper

  SELECTORS_DIR = RAILS_ROOT + "/spec/selectors" unless defined?(SELECTORS_DIR)
  
  def load_selectors(*filenames)
    @selectors ||= {}
    filenames.each { |filename| @selectors.merge!(YAML::load(File.read(SELECTORS_DIR + "/#{filename.to_s}.yml"))) }
  end

  def have_element(element)
    have_xpath(@selectors[element.to_s])
  end

  def should_have_element(element)
    it "should have #{element.to_s}" do
      response.should have_element(element)
    end
  end

  def should_not_have_element(element)
    it "should not have #{element.to_s}" do
      response.should_not have_element(element)
    end
  end

end