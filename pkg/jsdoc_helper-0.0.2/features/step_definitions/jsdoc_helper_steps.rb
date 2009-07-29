Given /^a basic javascript project directory structure$/ do
  create_dir('lib')
end

Given /^a file named "([^\"]*)"$/ do |file_name|
  create_file(file_name)
end

Given /^a file named "([^\"]*)" with:$/ do |file_name, file_content|
  create_file(file_name, file_content)
end


When /^I run rake (.*)$/ do |rake_opts|
  run "rake #{rake_opts} --trace"
end

Then /^it should (pass|fail)$/ do |desired_result|
  case desired_result
  when 'fail'
    last_exit_status.should_not be(0)
  else
    if last_exit_status != 0
      raise "Failed with exit status #{last_exit_status}\nSTDOUT:\n#{last_stdout}\nSTDERR:\n#{last_stderr}"
    end
  end
end

Then /^the output should contain$/ do |string|
  last_stdout.should include(string)
end

Then /^the output should match$/ do |string|
  last_stdout.should =~ Regexp.new(string)
end

Then /^I should get basic documentation for my project$/ do
  %w(doc doc/index.html doc/files.html).each do |file_name|
    raise "Documentation was not properly generated: '#{file_name}' does not exist. File tree is #{file_list.join(', ')}" unless file_exist?(file_name) 
  end 
end

Then /^the documentation src directory should include$/ do |table|
  table.raw.flatten.each do |file_name|
    src_file_name = "doc/symbols/src/#{file_name.gsub('/', '_')}.html"
    raise "doc src file for #{src_file_name} does not exist, file tree is #{file_list.join(', ')}" unless file_exist?(src_file_name)
  end
end
