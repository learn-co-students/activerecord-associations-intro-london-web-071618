require_relative '../config/environment'
require 'rake'
load './Rakefile'

RSpec.configure do |config|
<<<<<<< HEAD
  config.order = 'default'

  `rake db:migrate`

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
=======
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.order = 'default'

>>>>>>> d9cfc58b9923e9b81f505bcf7953a2a947fb16ea
end
