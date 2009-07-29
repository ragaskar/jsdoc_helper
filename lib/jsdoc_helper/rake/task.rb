require 'forwardable'
module JsdocHelper
  module Rake
    # Encapsulates rake tasks for generating jsdoc documentation
    # 
    # example:
    #   JsdocHelper::Rake::Task.new do |t|
    #     t[:toolkit] = '/usr/local/lib/jsdoc-toolkit'
    #     t[:files] << 'ext'
    #     t[:template] = 'templates/jsdoc_custom'
    #     t[:out] = 'html'
    #     t[:options] = '--private'
    #   end
    # 
    class Task
      
      extend Forwardable
      def_delegators :runner, :[]=
      
      DEFAULT_NAME = 'jsdoc'
            
      # Create a new jsdoc-toolkit task. If a block is passed, the task object will be passed as an argument to the block.
      def initialize(task_name=DEFAULT_NAME)
        yield self if block_given?
        define_task(task_name)
      end
      
      private
      
      def define_task(task_name)
        desc "Generate jsdoc-toolkit documentation"
        task task_name do
          runner.run
        end
      end
      
      def runner
        @runner ||= Runner.new
      end
      
    end
  end
end