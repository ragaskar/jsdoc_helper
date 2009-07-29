require 'open4'
require 'fileutils'

module FileHelper
  
  attr_reader :last_stdout, :last_stderr, :last_exit_status
  
  # The working directory, where all testing action takes place. Basically a tmp directory for tests
  def working_dir
    @working_dir ||= JsdocHelper.path(%w(test tmp))
  end
  
  # Create a directory in the working directory
  def create_dir(dir_name)
    in_working_dir do
      FileUtils.mkdir(dir_name)
    end
  end
  
  # Create a file in the working directory
  def create_file(file_name, file_content="")
    file_content.gsub!('JSDOC_HELPER_LIB', "'#{JsdocHelper.libpath}'")
    in_working_dir do
      File.open(file_name, 'w') { |f| f << file_content }
    end
  end
  
  # Check if a file exists
  def file_exist?(file_name)
    in_working_dir do
      File.exist?(file_name)
    end
  end
  
  # Returns a path to a file in the working directory
  def path(relative_path='')
    File.expand_path(File.join(working_dir, relative_path))
  end
  
  def doc_src_prefix
    path.gsub('/', '_')
  end
  
  # Run a command in the working directory
  def run(command)
    in_working_dir do
      Open4.popen4("#{command}") do |cid, stdin, stdout, stderr|
        @last_stdout = stdout.read
        @last_stderr = stderr.read
      end
      @last_exit_status = $?.exitstatus
    end
  end
  
  # A list of all files in the working directory
  def file_list
    in_working_dir do
      Dir.glob('**/*')      
    end
  end
  
  private
  
  def in_working_dir(&block)
    Dir.chdir(working_dir, &block)
  end
  
end