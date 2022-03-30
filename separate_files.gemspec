Gem::Specification.new do |s|
  s.name = "separate_files"
  s.version = "1.0.0"
  s.author = "Octavio Lugo"
  s.email = "octaviolugocamacho@hotmail.com"
  s.summary = "Plays and reviews movies"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.homepage = "https://github.com/OctavioLugoCamacho/curso-ruby"

  s.files = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files = Dir["spec/**/*"]
  s.executables = [ 'separate_files' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end