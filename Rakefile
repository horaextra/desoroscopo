gem 'rspec'
require 'spec'
require 'spec/rake/spectask'

desc "Default Task"
task :default => [ :spec ]

desc "Run all specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end