namespace :db do

  desc "Cleans the database completely (with DatabaseCleaner), preserves structure"
    task :truncate => :environment do
      puts("Cleaning up whole database...")
      DatabaseCleaner.clean_with(:truncation) if defined? DatabaseCleaner
  end
  namespace :truncate do

    desc "Cleans the db's contacts (with DatabaseCleaner), preserves structure"
    task :contacts => :environment do
      puts("Cleaning up contacts...")
      DatabaseCleaner.clean_with(:truncation, :only => [:contacts]) if defined? DatabaseCleaner

    end
  end
end