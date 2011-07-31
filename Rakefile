# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "jambalaya-rspec"
  gem.homepage = "http://github.com/gardentree/jambalaya-rspec"
  gem.license = "MIT"
  gem.email = %q{takahiro.ueki@gmail.com}
  gem.summary = %Q{Jambalaya for RSpec}
  gem.description = %Q{Jambalaya for RSpec}
  gem.authors = ["gardentree"]
  # dependencies defined in Gemfile

  gem.files = FileList['lib/**/*.rb','bin/*','[A-Z]*','test/**/*'].to_a
  gem.add_development_dependency "rspec", ">= 2.5.0"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jambalaya-rspec #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
