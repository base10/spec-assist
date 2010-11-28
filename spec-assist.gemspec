# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spec-assist}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan L. Walls"]
  s.date = %q{2009-01-27}
  s.description = %q{A gem with helper methods for use with rspec tests}
  s.email = %q{nathan@rexluther.com}
  s.files = ["VERSION.yml", "lib/spec_assist.rb", "test/spec_assist_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/base10/spec-assist}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Initial commit}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end