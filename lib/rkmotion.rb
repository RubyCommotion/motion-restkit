require 'motion-cocoapods'
require 'motion-require'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  gem_files = Dir.glob(File.join(lib_dir_path, 'rkmotion/**/*.rb'))
  app.files.unshift(gem_files).flatten!
  app.pods do
    pod 'RestKit', '~> 0.22.0'
  end
end
