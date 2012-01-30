# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "win32/input_device/version"

Gem::Specification.new do |s|
  s.name        = "win32-input_device"
  s.version     = Win32::InputDevice::VERSION
  s.authors     = ["yafei LI"]
  s.email       = ["lyfi2003@gmail.com"]
  s.homepage    = "https://github.com/windy/win32-input_device"
  s.summary     = %q{ win32 mouse and keyboard api}
  s.description = %q{win32 mouse and keyboard api}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('windows-api')
end
