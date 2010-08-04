require 'rubygems'
require 'rake'

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:test) do |s|
  s.libs << 'lib' << 'spec'
  s.spec_files = FileList['spec/**/*_spec.rb']
end

task :default => :test
