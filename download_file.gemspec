# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "download_file/version"

Gem::Specification.new do |s|
  s.name        = "download_file"
  s.version     = DownloadFile::VERSION
  s.authors     = ["chucai"]
  s.email       = ["hexudong08@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{下载文件}
  s.description = %q{从指定的端口下载文件列表，并且归类}

  s.rubyforge_project = "download_file"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
