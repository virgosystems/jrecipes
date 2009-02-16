require 'yaml'

module JRecipes
  VERSION = YAML.load_file(File.join(File.dirname(__FILE__), "..", "VERSION.yml"))
  def self.version
    "#{VERSION[:major]}.#{VERSION[:minor]}.#{VERSION[:patch]}"
  end
end

require 'jrecipes/recipes'
