class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :phone_number, :surname

  validates_presence_of :first_name, :surname
  validates_length_of :phone_number, :minimum => 11, :maximum => 11, :allow_blank => true
end
