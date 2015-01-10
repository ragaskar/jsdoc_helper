require File.expand_path(File.join(File.dirname(__FILE__), %w[.. .. spec_helper]))
require JsdocHelper.path(%w(features support file_helper))
require 'fileutils'

describe FileHelper do
  
  include FileHelper
  
  ::Spec::Matchers.define :exist_in do |fh|
    match do |file_name|
      fh.file_exist?(file_name)
    end
    failure_message_for_should do |file_name|
      "'#{file_name}' does not exist in a file in '#{fh.working_dir}'"
    end
  end
  
  before do
    FileUtils.rm_rf working_dir
    FileUtils.mkdir working_dir
  end
  
  it "should have a working directory" do
    working_dir.should == JsdocHelper.path(%w(test tmp))
  end
  
  it "should return a path to a file in the working directory" do
    path('test').should == File.expand_path(JsdocHelper.path(%w(test tmp test)))
  end
  
  it "should create a file" do
    File.exist?(JsdocHelper.path(%w(test tmp test.file))).should be_false
    create_file('test.file')
    File.exist?(JsdocHelper.path(%w(test tmp test.file))).should be_true
  end
  
  it "should create a directory" do
    File.directory?(path('lib')).should be_false
    create_dir('lib')
    File.directory?(path('lib')).should be_true
  end
  
  it "should create a file with content" do
    create_file('test.txt', 'hi there this is content')
    IO.read(path('test.txt')).should == "hi there this is content"
  end
  
  it "should run a command and store the stdout, stderr, and last exit code" do
    run('echo pandas')
    last_stdout.should =~ /^pandas\n$/m
    last_stderr.should be_empty
    
    run('echo panda error 1>&2')
    last_stdout.should be_empty
    last_stderr.should =~ /^panda error\n$/m
    last_exit_status.should be(0)
    
    run('echo panda exits 1>&2; exit 1')
    last_stdout.should be_empty
    last_stderr.should =~ /^panda exits\n$/m
    last_exit_status.should be(1)
  end
  
  it "should detect if a file exists" do
    'lib'.should_not exist_in(self)
    'lib/test.file'.should_not exist_in(self)
    'otherfile.txt'.should_not exist_in(self)
    
    create_dir('lib')
    create_file('lib/test.file')
    create_file('otherfile.txt')
    
    'lib'.should exist_in(self)
    'lib/test.file'.should exist_in(self)
    'otherfile.txt'.should exist_in(self)
    'notafile.txt'.should_not exist_in(self)
    'lib/stillnotafile.txt'.should_not exist_in(self)
  end
  
  it "should produce a src prefix for documentation" do
    doc_src_prefix.should =~ /^#{path.gsub('/', '_')}$/
  end
  
  it "should return a nice file list" do
    create_file('test1.js')
    create_file('test2.js')
    create_dir('lib')
    create_file('lib/test3.js')
    
    file_list.join(' ').should == "lib lib/test3.js test1.js test2.js"
  end
  
end