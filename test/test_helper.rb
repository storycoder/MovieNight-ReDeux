ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'

require 'minitest/reporters'
Minitest::Reporters.use!(Minitest.Reporters::ProgressReporter.new)

require 'capybara/rails'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

require 'support/test_password_helper'

class ActionDispatch::IntegrationTest
	include Capybara::DSL
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include TestPasswordHelper

  # Add more helper methods to be used by all tests here...
class ActionController::TestCase
	include Devise::TestHelpers
end

ActiveRecord::FixtureSet.context_class.send
:include, TestPasswordHelper