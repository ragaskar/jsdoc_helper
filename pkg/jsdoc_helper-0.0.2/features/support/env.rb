require 'rubygems'
require 'spec/expectations'
require 'fileutils'
require File.join(File.dirname(__FILE__), '../../lib/jsdoc_helper')

require JsdocHelper.path(%w(features support file_helper))
World FileHelper
Before do
  FileUtils.rm_rf working_dir
  FileUtils.mkdir working_dir
end