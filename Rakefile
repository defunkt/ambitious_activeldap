require 'rake'

Version = '0.1.1'

begin
  require 'rubygems'
  gem 'echoe', '>=2.7'
  ENV['RUBY_FLAGS'] = ""
  require 'echoe'

  Echoe.new('ambitious-activeldap') do |p|
    p.dependencies  << 'activeldap >=0.9'
    p.summary        = "An ambitious adapter for ActiveLDAP"
    p.author         = 'Matthew King'
    p.email          = "automatthew@gmail.com"

    p.project        = 'ambition'
    p.url            = "http://ambition.rubyforge.org/"
    p.test_pattern   = 'test/*_test.rb'
    p.version        = Version
    p.dependencies  << 'ambition >=0.5.0'
  end

rescue LoadError 
  puts "Not doing any of the Echoe gemmy stuff, because you don't have the specified gem versions"
end

desc 'Install as a gem'
task :install_gem do
  puts `rake manifest package && gem install pkg/ambitious-activeldap-#{Version}.gem`
end
