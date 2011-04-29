# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'wipit/version'

Gem::Specification.new do |s|
  s.name        = 'wipit'
  s.version     = Wipit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['John Thomas Marino']
  s.email       = 'writejm@gmail.com'
  s.homepage    = 'http://github.com/johmas/wipit'
  s.summary     = %q{
    wipit is a command line utility for git that makes it easier to save work in progress.
  }
  s.description = %q{
    Save your work.

        $ wipit
        > git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP'

    Save your work to a topic branch.

        $ wipit my_wip_branch
        > git checkout -b my_wip_branch && git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP'

    Save your work to a topic branch and push to origin.

        $ wipit my_wip_branch -p
        > git checkout -b my_wip_branch && git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP' && git push origin my_wip_branch
  }

  s.rubyforge_project = 'wipit'
  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob('lib/**/*')
  s.files            += Dir.glob('bin/**/*')
  s.files            += Dir.glob('test/**/*')
  s.require_paths     = ['lib']
  s.executables       = %w( wipit )
end
