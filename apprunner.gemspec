# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','apprunner','constants.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'apprunner'
  s.version = Apprunner::Constants::VERSION
  s.author = 'Fritz G. Batroni'
  s.email = 'fritz.g.batroni@gmail.com'
  s.homepage = 'http://github.com/fbatroni/apprunner'
  s.platform = Gem::Platform::RUBY
  s.summary = %q{AppRunner installs and runs core workflow applications and their dependencies}
  s.description   = %q{AppRunner installs and runs core workflow applications and their dependencies}
  s.files         = `git ls-files -z`.split("\x0")
  s.require_paths << 'lib'
  s.license       = "MIT"
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','apprunner.rdoc']
  s.rdoc_options << '--title' << 'apprunner' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency "bundler", "~> 1.6"
  s.add_runtime_dependency('gli','2.13.0')
  s.add_runtime_dependency('octokit', '~> 3.0')
  s.add_runtime_dependency('bcrypt', '~> 3.1.5')
  s.add_runtime_dependency('highline', '~> 1.7.1')
  s.add_runtime_dependency('rubyutils', '~> 0.0.6')
  s.add_dependency('win32console') if ($platform.to_s =~ /win32|mswin|mingw|cygwin/ || $platform.to_s == 'ruby')
  s.extensions = ['ext/apprunner/extconf.rb']
end