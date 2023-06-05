# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'c_cloud_dms_client/version'

Gem::Specification.new do |spec|
  spec.name          = "c_cloud_dms_client"
  spec.version       = CCloudDmsClient::VERSION
  spec.authors       = ["David Salazar"]
  spec.email         = ["dsalazar@carecloud.com"]
  spec.description   = %q{TMP}
  spec.summary       = %q{TMP}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "c_cloud_http_client"
end
