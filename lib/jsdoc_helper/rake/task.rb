module JsdocHelper
  module Rake
    class Task
    
      def initialize(task_name='jsdoc')
        
        @jsdoc_dir ||= JsdocHelper.path(::File.join('ext', 'jsdoc-toolkit'))
        @java_binary ||= 'java'
        @jsrun_jar ||= 'jsrun.jar'
        @app_run ||= 'app/run.js'
        @flags ||= ''
        @template ||= 'templates/jsdoc'
        @outfile ||= File.expand_path('doc')
        @files ||= all_js_files
        
        desc "Generate jsdoc-toolkit documentation"
        task task_name do
          command = "#{@java_binary} -jar #{@jsrun_jar} #{@app_run} #{@flags} -d=#{@outfile} -t=#{@template} #{@files.join(' ')}"
          puts command
          Dir.chdir(@jsdoc_dir) do
            sh command
          end          
        end
      end
      
      def all_js_files
        Dir.glob('lib/**/*.js').map { |f| File.expand_path(f) }
      end
    
    end
  end
end