require File.expand_path(File.join(File.dirname(__FILE__), %w[.. .. .. spec_helper]))
require JsdocHelper.path(%w(features support file_helper))

module JsdocHelper
  module Rake
    class Task
      
      describe Runner do
        
        include FileHelper
        
        before do
          @r = Runner.new
          @approot = JsdocHelper.path
          FileUtils.rm_rf working_dir
          FileUtils.mkdir working_dir
          create_dir('lib')
          create_file('lib/test.js')
        end
        
        it "should work with FileUtils and FileHelper the way I expect" do
          in_working_dir do
            `pwd`.should == "#{@approot}test/tmp\n"
          end
        end
        
        it "should have a useful default command with files" do
          in_working_dir do
            @r.command.should == "java -jar #{@approot}ext/jsdoc-toolkit/jsrun.jar #{@approot}ext/jsdoc-toolkit/app/run.js lib/test.js -t=#{@approot}ext/jsdoc-toolkit/templates/jsdoc -d=doc"
          end
        end
        
        it "should output a 'using' string when its using a different toolkit" do
          @r[:toolkit] = '../ext/jsdoc-toolkit'
          in_working_dir do
            output = quietly { @r.run :return_string => true }
            output.should =~ /using (.*)jsdoc-toolkit/
          end
        end
                
      end
    
    end
  end
end