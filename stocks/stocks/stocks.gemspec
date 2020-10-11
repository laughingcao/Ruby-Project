lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/stocks/version'

Gem::Specification.new do |spec|
  spec.name          = "stocks"
  spec.version       = Stocks::VERSION
  spec.authors       = ["laughingcao"]
  spec.email         = ["williamacao@gmail.com"]

  spec.summary       = %q{Robinhood top 5 analyst rated stocks today}
  spec.description   = %q{Select a stock to get more info}
  spec.homepage      = "https://github.com/laughingcao/learn-co-sandbox/tree/master/stocks/stocks"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
     spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
   else
     raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
   end
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
