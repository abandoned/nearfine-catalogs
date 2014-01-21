Gem::Specification.new do |gem|
  gem.name     = 'nearfine-catalogs'
  gem.version  = '0.1.0'
  gem.authors  = ['Paper Cavalier']
  gem.summary  = %q{Provides Nearfine catalogs}

  gem.files         = Dir.glob('lib/**/*') + %w(LICENSE)
  gem.test_files    = Dir.glob('test/**/*')
  gem.require_paths = ['lib']

  gem.add_dependency 'excon', '~> 0.31.0'
  gem.add_dependency 'signature', '~> 0.1.7'
  gem.add_dependency 'virtus', '~> 1.0.0'
  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'rake'
end
