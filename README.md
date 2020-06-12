# vehiculum_audit

![vehiculum_audit](https://github.com/vehiculum-berlin/vehiculum_audit/workflows/vehiculum_audit/badge.svg?branch=master)

A set of tools for convenient technical analysis of web applications built with Ruby and Ruby on Rails.

- Brakeman - a static analysis security vulnerability scanner for Ruby on Rails applications
- Bullet - a gem that finds and kills N+1 queries and unused eager loading
- Bundler-audit - a patch-level verification for Bundler
- Fasterer - a gem that helps Rubies go faster
- Reek - a code smell detector
- Vehiculum-codestyle - shared Ruby style guide used by Vehiculum Tech team. It includes Rubocop as dependency.
- SimpleCov - Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites

The tools are configured for displaying output to the console in a single format which results in better readability and no need to switch between the tools.

The complete list of the tools and links to official repositories can be found in vehiculum_audit.gemspec file.

Additionally, you can access code coverage report by opening `index.html` in the `/coverage` derectory.

## Installation

Add this line to your application's Gemfile:

```
gem 'vehiculum_audit', group: %w(development test)
```
Then execute the following commands:

```
$ bundle
$ rails vehiculum_audit:install
```

## How to use this gem?

By executing the command below, you'll get a list of commands that will allow you to launch either all the tools at a time or launch every single tool separately.

```
$ rails --tasks vehiculum_audit
```

## License

The gem is available as open source under the terms of the MIT License.
