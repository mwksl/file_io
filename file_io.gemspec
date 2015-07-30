Gem::Specification.new do |s|
  s.name        = 'file_io'
  s.version     = '0.0.5'
  s.date        = '2015-08-10'
  s.summary     = "File.io API integration"
  s.description = "Provide a ruby interface for interacting with File.io."
  s.authors     = ["Matthew 'mwksl' Stingel"]
  s.email       = 'matthew@leaguer.io'
  s.files       = ["lib/file_io.rb"]
  s.homepage    =
    'http://rubygems.org/gems/file_io'
  s.license       = 'MIT'

  s.add_dependency('rest_client')
  s.add_dependency('json')

  s.required_ruby_version = '>= 1.9.3'
end
