require 'fileutils'
require 'tempfile'

module FileHelpers
  
  extend Forwardable
  def_delegators FileHelpers, :path, :working_path
  
  attr_accessor :current_dir, :last_stdout, :last_stderr, :last_exit_status
  
  class << self
    
    def working_path
      @working_path ||= path(File.join(%w(test tmp)))
    end
    
    def features_path
      @features_path ||= File.expand_path(File.dirname(File.dirname(__FILE__)))
    end
    
    def path(relative_path=nil)
      @path ||= File.expand_path(File.dirname(features_path))
      relative_path ? File.join(@path, relative_path) : @path
    end
    
  end
  
  def jsdoc_helper_lib
    path('lib')
  end
  
  def create_dir(dir_name)
    in_current_dir do
      FileUtils.mkdir(dir_name)
    end
  end
  
  def create_file(file_name, file_content)
    file_content.gsub!('JSDOC_HELPER_LIB', "'#{jsdoc_helper_lib}'")
    in_current_dir do
      File.open(file_name, 'w') { |f| f << file_content }
    end
  end
  
  def file_exist?(file_name)
    in_current_dir do
      File.exist? file_name
    end
  end
  
  def run(command)
    stderr_file = Tempfile.new('jsdoc_helper')
    stderr_file.close
    in_current_dir do
      IO.popen("#{command} 2> #{stderr_file.path}", 'r') { |io| @last_stdout = io.read }
      @last_exit_status = $?
    end
    @last_stderr = IO.read(stderr_file.path)
  end
  
  private
  
  def in_current_dir(&block)
    Dir.chdir(current_dir, &block)
  end
  
end

World(FileHelpers)

Before do
  FileUtils.rm_rf FileHelpers.working_path
  FileUtils.mkdir FileHelpers.working_path
  self.current_dir = FileHelpers.working_path
end