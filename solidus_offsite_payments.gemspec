Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_offsite_payments'
  s.version     = '0.0.1'
  s.summary     = 'ActiveMerchant::OffsitePayments Integration for Solidus'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1'

  s.author    = 'Seb Ashton'
  s.email     = 'seb+github@sebashton.com'
  s.homepage  = 'http://www.sebashton.com'

  s.files       = `git ls-files`.split('\n')
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus', ['>= 1.0.0', '<= 1.2.0']
  s.add_dependency 'offsite_payments', ['2.3.0']

  s.add_development_dependency 'rspec-rails', '~> 3.2'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rubocop', '0.35.1'
  s.add_development_dependency 'rubocop-rspec', '1.3.1'
  s.add_development_dependency 'codeclimate-test-reporter'
end
