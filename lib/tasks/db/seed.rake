namespace :db do

  desc "cleans the database completely (with DatabaseCleaner), and fills it up with fake data"
  task :seed => %w{
    db:truncate
    seed:prepare
    seed:contacts
  }

  namespace :seed do
    desc "Loads factory girl"
    task :prepare => :environment do
      puts("Loading up factory girl")
      require 'factory_girl'
      FactoryGirl.find_definitions
      include FactoryGirl::Syntax::Methods
    end

    desc "Creates the default contacts"
    task :contacts => "seed:prepare" do
      puts("Creating contacts...")

      create(:contact, :first_name=> "Johnny", :surname => "Cage", :address => "USA", :phone_number => "01489776654", :email => "johnnyCage@secretAgent.com")
      create(:contact, :first_name=> "Liu", :surname => "Kang", :address => "Earthrealm", :phone_number => "07984522210", :email => "")
      create(:contact, :first_name=> "Reptile", :surname => "Something", :address => "Outworld", :phone_number => "01215558989", :email => "Reptile@outworld.com")
      create(:contact, :first_name=> "Scorpion", :surname => "Ninja", :address => "Outworld", :phone_number => "", :email => "Scorpion@match.com")
      create(:contact, :first_name=> "Shao", :surname => "Kahn", :address => "Outworld", :phone_number => "07989895412", :email => "Kahn@aol.com")
      create(:contact, :first_name=> "Sub", :surname => "Zero", :address => "Somewhere in Birmingham", :phone_number => "01215645548", :email => "sub.zero@gmail.com")
      create(:contact, :first_name=> "Sonya", :surname => "Blade", :address => "Somewhere on earth, A land not so far away", :phone_number => "07895667766", :email => "Sonya@mail.com")
      create(:contact, :first_name=> "Alberto", :surname => "Einsfeld", :address => "Einstein World", :phone_number => "01489558866", :email =>"albert@gotham.org" )
      create(:contact, :first_name=> "Robert", :surname => "Smith", :address => "Fascination Street", :phone_number =>"07788564738" , :email => "sadface@themusic.com")
      create(:contact, :first_name=> "Skyla", :surname => "Dog", :address => "", :phone_number => "", :email => "")
    end
  end
end