require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Open an irb session preloaded with this library"
task :c do
  sh "irb -rubygems -I lib -r soccerama.rb"
end