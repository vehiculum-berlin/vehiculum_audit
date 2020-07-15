lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'vehiculum_audit/version'

Gem::Specification.new do |spec|
  spec.name          = 'vehiculum_audit'
  spec.version       = VehiculumAudit::VERSION
  spec.authors       = ['Vehiculum Tech Team']
  spec.email         = ['tech-services@vehiculum.de']

  spec.summary       = 'No one expects the code audit'
  spec.homepage      = "https://github.com/vehiculum-berlin/vehiculum_audit"
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.2'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_dependency 'awesome_print'        # https://github.com/awesome-print/awesome_print
  spec.add_dependency 'benchmark-ips'        # https://github.com/evanphx/benchmark-ips
  spec.add_dependency 'brakeman'             # https://github.com/presidentbeef/brakeman
  spec.add_dependency 'bullet'               # https://github.com/flyerhzm/bullet
  spec.add_dependency 'bundler-audit'        # https://github.com/rubysec/bundler-audit
  spec.add_dependency 'colorize'             # https://github.com/fazibear/colorize
  spec.add_dependency 'fasterer'             # https://github.com/DamirSvrtan/fasterer
  spec.add_dependency 'hirb'                 # https://github.com/cldwalker/hirb
  spec.add_dependency 'lefthook'             # https://github.com/Arkweid/lefthook
  spec.add_dependency 'pry-byebug'           # https://github.com/deivid-rodriguez/pry-byebug
  spec.add_dependency 'pry-rails'            # https://github.com/rweng/pry-rails
  spec.add_dependency 'pry-rescue'           # https://github.com/ConradIrwin/pry-rescue
  spec.add_dependency 'pry-stack_explorer'   # https://github.com/pry/pry-stack_explorer
  spec.add_dependency 'reek'                 # https://github.com/troessner/reek
  spec.add_dependency 'rubocop-performance'  # https://github.com/rubocop-hq/rubocop-performance
  spec.add_dependency 'vehiculum-codestyle'  # https://github.com/Arkweid/lefthook
  spec.add_dependency 'simplecov'            # https://github.com/colszowka/simplecov
  spec.add_dependency 'traceroute'           # https://github.com/amatsuda/traceroute
end
