# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
namespace :features do
  Cucumber::Rake::Task.new(:run) do |t|
    t.cucumber_opts = "features --format pretty"
  end
end
desc "Alias for 'features:run'"
task :features => 'features:run'

ensure_in_path 'lib'
require 'jsdoc_helper'

task :default => 'spec:run'

PROJ.name = 'jsdoc_helper'
PROJ.authors = 'Pete Gadomski'
PROJ.email = 'pete.gadomski@gmail.com'
PROJ.url = 'http://github.com/quentonc/jsdoc_helper/tree/master'
PROJ.version = JsdocHelper::VERSION
PROJ.rubyforge.name = 'jsdoc_helper'
PROJ.readme_file = 'README.rdoc'
PROJ.rdoc.exclude << %w(ext/jsdoc-toolkit .DS_Store)

PROJ.spec.opts << '--color'

# EOF
