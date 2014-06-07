require "bundler/gem_tasks"

desc "run specs"
task(:spec) { ruby "-S rspec spec" }

task :default => :spec

task :console do
  require 'irb'
  require 'irb/completion'
  require 'eventually_helper' # You know what to do.
  ARGV.clear
  IRB.start
end
