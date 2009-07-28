Feature: Make doc with rake
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
    And the output should contain
      """
      java -jar jsrun.jar app/run.js
      """
    And I should get basic documentation for my project
    
