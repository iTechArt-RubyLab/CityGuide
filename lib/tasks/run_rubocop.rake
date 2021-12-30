# frozen_string_literal: true

require 'rubocop'
require 'rubocop/rake_task'
require 'rubocop-rake'

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-performance' << 'rubocop-rspec' << 'rubocop-rails'
end
