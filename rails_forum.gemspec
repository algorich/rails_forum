# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_forum/version"

Gem::Specification.new do |s|
  s.name        = "rails_forum"
  s.version     = RailsForum::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eduardo Hertz"]
  s.email       = ["eduardo[at]algorich.com.br"]
  s.homepage    = ""
  s.summary     = %q{A web forum for rails applications.}
  s.description = %q{A web forum for rails applications.}

  s.rubyforge_project = "rails_forum"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "app"]
  s.add_dependency("rspec", "2.5.0")
  s.add_dependency("devise", "1.3.4")
end

