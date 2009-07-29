Feature: Writing the rakefile, defining rake tasks
  In order to programatically and simply access the jsdoc-toolkit
  As a Javascript and Ruby programmer
  I want to be able to create rake tasks that reference the jsdoc-toolkit

  Scenario: creating the default rake task
    Given a file named "Rakefile" with:
      """
      $LOAD_PATH.unshift(JSDOC_HELPER_LIB)
      require 'jsdoc_helper'
      
      JsdocHelper::Rake::Task.new
      """
    When I run rake -T
    Then it should pass
    And the output should contain
      """
      rake jsdoc  # Generate jsdoc-toolkit documentation
      """
  
  Scenario: creating a task with a different name
    Given a file named "Rakefile" with:
      """
      $LOAD_PATH.unshift(JSDOC_HELPER_LIB)
      require 'jsdoc_helper'
      
      JsdocHelper::Rake::Task.new(:jsdoc_toolkit)
      """
    When I run rake -T
    Then it should pass
    And the output should contain
      """
      rake jsdoc_toolkit  # Generate jsdoc-toolkit documentation
      """
  
  