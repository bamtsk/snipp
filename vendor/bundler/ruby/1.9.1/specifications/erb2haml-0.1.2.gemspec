# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "erb2haml"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Leung"]
  s.date = "2011-02-13"
  s.description = "Simple rake task to bulk covert ERB HAML files in a Rails app to Haml."
  s.email = "david@davidslab.com"
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/dhl/erb2haml"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Bulk ERB HTML to Haml conversion for Rails."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
      s.add_runtime_dependency(%q<ruby_parser>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0"])
      s.add_dependency(%q<ruby_parser>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0"])
    s.add_dependency(%q<ruby_parser>, [">= 0"])
  end
end
