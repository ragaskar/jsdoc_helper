Feature: Doing `rake jsdoc`
  In order to generate documentation for my Javascript code
  As a Javascript/Ruby developer
  I want rake tasks that automate the document generation process

  Background:
    Given a basic javascript project directory structure
    And a file named "lib/test.js" with:
      """
      /**
      * Pandas are everywhere
      */
      var Pandas = {
        location: 'everywhere'
      }
      """
  
  Scenario: a basic rake task
    Given a file named "Rakefile" with:
      """
      $LOAD_PATH.unshift(JSDOC_HELPER_LIB)
      require 'jsdoc_helper'
      
      JsdocHelper::Rake::Task.new
      """
    When I run rake jsdoc
    Then it should pass
    And I should get basic documentation for my project
  
  Scenario: a basic rake task, specifying the location of jsdoc-toolkit
    Given a file named "Rakefile" with:
      """
      $LOAD_PATH.unshift(JSDOC_HELPER_LIB)
      require 'jsdoc_helper'
    
      JsdocHelper::Rake::Task.new do |t|
        t[:toolkit] = JsdocHelper.path('test/ext/jsdoc-toolkit')
      end
      """
    When I run rake jsdoc
    Then it should pass
    And the output should match
      """
      using ([^\s]*)/jsdoc_helper/test/ext/jsdoc-toolkit
      """
    And I should get basic documentation for my project
    And the documentation src directory should include
      | lib/test.js |
  
  Scenario: a basic rake task, specifying specific files to use for documentation
    Given a file named "wierdly_placed_file.js" with:
      """
      /**
      * This variable is so important that it does not belong in the normal directory structure
      */
      var amIspecial = true;
      """
    And a file named "Rakefile" with:
      """
      $LOAD_PATH.unshift(JSDOC_HELPER_LIB)
      require 'jsdoc_helper'

      JsdocHelper::Rake::Task.new do |t|
        t[:files] = %w(wierdly_placed_file.js lib)
      end
      """    
    When I run rake jsdoc
    Then it should pass
    And I should get basic documentation for my project
    And the documentation src directory should include
      | wierdly_placed_file.js |
      | lib_test.js            |
  
  