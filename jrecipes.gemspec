# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jrecipes}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Laszlo Bacsi"]
  s.date = %q{2009-03-25}
  s.description = %q{TODO}
  s.email = %q{lackac@lackac.hu}
  s.files = ["VERSION.yml", "lib/capistrano", "lib/capistrano/recipes", "lib/capistrano/recipes/deploy", "lib/capistrano/recipes/deploy/strategy", "lib/capistrano/recipes/deploy/strategy/war_file.rb", "lib/jrecipes", "lib/jrecipes/recipes.rb", "lib/jrecipes.rb", "test/jrecipes_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/lackac/jrecipes}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
