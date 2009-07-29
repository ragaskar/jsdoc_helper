require 'forwardable'
module JsdocHelper
  module Rake
    class Task
      class Runner
        
        extend Forwardable
        def_delegator :@args, :[]=
        
        DEFAULT_TOOLKIT = JsdocHelper.path('ext', 'jsdoc-toolkit')

        def initialize(args={})
          @args = default_args.merge(args)
        end

        def run(opts={})
          msg = toolkit == DEFAULT_TOOLKIT ? '' : "using #{toolkit}"
          
          puts msg unless msg.empty?
          system command
          
          msg.empty? || !opts[:return_string] ? true : msg
        end
        
        def command
          "#{jsrun} #{jsdoc} #{files} -t=#{template} -d=#{out} #{options}".strip
        end
        
        private
        
        def jsrun
          "java -jar #{toolkit_path('jsrun.jar')}"
        end
        
        def toolkit
          File.expand_path(@args[:toolkit])
        end
        
        def jsdoc
          toolkit_path('app/run.js')
        end
        
        def out
          @args[:out].to_a.to_s
        end
        
        def files
          @args[:files].to_a.join(' ')
        end
        
        def template
          toolkit_path(@args[:template])
        end
        
        def toolkit_path(relative_path)
          File.join(toolkit, relative_path)
        end
        
        def options
          @args[:options].to_a.join(' ')
        end
        
        def default_args
          @default_args ||= {
            :toolkit => DEFAULT_TOOLKIT,
            :files => FileList[File.join(%w(lib ** *.js))],
            :template => "templates/jsdoc",
            :out => FileList['doc'],
            :options => ""
          }
        end
        
      end
    end
  end
end

