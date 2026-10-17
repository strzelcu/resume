# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "strzelcu.github.io"
  spec.version       = "0.1.0"
  spec.authors       = ["Tomasz Strzelecki"]
  spec.email         = ["mlody_analog3f@icloud.com"]

  spec.required_ruby_version = ">= 4.0"

  spec.summary       = "Tomasz Strzelecki - Software Engineer"
  spec.homepage      = "https://strzelcu.github.io/resume/"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.4", ">= 4.4.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.9", ">= 2.9.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"

  spec.add_development_dependency "bundler", "~> 4.0", ">= 4.0.23"
  spec.add_development_dependency "rake", "~> 13.4", ">= 13.4.2"
end
