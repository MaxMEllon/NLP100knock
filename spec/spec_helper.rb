require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

Dir['./prog/**/*.rb'].each { |f| require f }
