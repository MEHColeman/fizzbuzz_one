require_relative 'lib/FizzBuzz/version'

Gem::Specification.new do |spec|
  spec.name          = 'FizzBuzz'
  spec.version       = FizzBuzz::VERSION
  spec.authors       = ['Mark Coleman']
  spec.email         = ['m@rkcoleman.co.uk']

  spec.summary       = %q{Fizz buzz implementation}
  spec.description   = %q{Output fizz buzz for a given integer}
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.files         = ['bin/fizzbuzz',
                        'lib/fizzbuzz.rb',
                        'lib/fizzbuzz/version.rb']
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
