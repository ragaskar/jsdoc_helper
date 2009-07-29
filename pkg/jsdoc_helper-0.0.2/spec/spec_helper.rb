
require File.expand_path(
    File.join(File.dirname(__FILE__), %w[.. lib jsdoc_helper]))

Spec::Runner.configure do |config|
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
end

def quietly
  orig_stdout = $stdout
  $stdout = File.open('/dev/null', 'w')
  output = yield
  $stdout.close
  $stdout = orig_stdout
  output
end

# EOF
