# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "kramdown-katex"
  spec.version       = '0.1.1'
  spec.authors       = ["hyrious"]
  spec.email         = ["hyrious@outlook.com"]

  spec.summary       = 'Kramdown syntax plugin for using KaTeX at server side.'
  spec.description   = 'Kramdown syntax plugin for using KaTeX at server side.'
  spec.homepage      = "https://github.com/hyrious/kramdown-katex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "execjs", "~> 2.7.0"
end
