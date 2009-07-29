require 'forwardable'
module JsdocHelper
  module Rake
    class Task
      
      extend Forwardable
      def_delegators :runner, :[]=
      
      DEFAULT_NAME = 'jsdoc'
      
      attr_accessor :jsdoc_toolkit
      
      # Create a new jsdoc-toolkit task
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