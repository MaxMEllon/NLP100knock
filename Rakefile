require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

task :rubocop do
  sh 'bundle exec rubocop'
end

task default: [:spec, :rubocop]
