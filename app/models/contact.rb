class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :phone_number, :surname

  validates_presence_of :first_name, :surname
end
