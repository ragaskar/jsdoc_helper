namespace :jeweler do

  begin
    require 'jeweler'
    require 'rake'
    Jeweler::Tasks.new do |gemspec|
      gemspec.name = "ragaskar-jsdoc_helper"
      gemspec.summary = "jsdoc_helper"
      gemspec.description = "Fork of jsdoc_helper"
      gemspec.email = "ragaskar@gmail.com"
      gemspec.homepage = "http://github.com/ragaskar/jsdoc_helper"
      gemspec.description = "jsdoc_helper"
      gemspec.authors = ["Rajan Agaskar"]
      gemspec.files = FileList.new('bin/*', 'lib/**/*', 'ext/**/*')

    # gemspec.add_dependency('rspec', '>= 1.1.5')
    end
    Jeweler::GemcutterTasks.new
  rescue LoadError
    puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
  end
end
