(in /Users/trek/Development/um-automaton)
Gem::Specification.new do |s|
  s.name = %q{automaton}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FIXME full name"]
  s.date = %q{2008-08-22}
  s.description = %q{description of gem}
  s.email = ["FIXME email"]
  s.executables = ["automaton", "automaton-course"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "app_generators/automaton/USAGE", "app_generators/automaton/automaton_generator.rb", "bin/automaton", "bin/automaton-course", "config/hoe.rb", "config/requirements.rb", "generators/course/USAGE", "generators/course/course_generator.rb", "generators/course/templates/Info.plist", "generators/course/templates/Info.strings", "generators/course/templates/art.rb", "generators/course/templates/template.plist", "lib/automaton.rb", "lib/automaton/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "spec/automaton_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake", "tasks/website.rake", "test/test_automaton_generator.rb", "test/test_course_generator.rb", "test/test_generator_helper.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://automaton.rubyforge.org}
  s.post_install_message = %q{
For more information on automaton, see http://automaton.rubyforge.org

NOTE: Change this information in PostInstall.txt 
You can also delete it if you don't want it.


}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{automaton}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{description of gem}
  s.test_files = ["test/test_automaton_generator.rb", "test/test_course_generator.rb", "test/test_generator_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
