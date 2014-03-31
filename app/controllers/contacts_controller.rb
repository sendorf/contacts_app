class ContactsController < ApplicationController

	def index
		@contacts = Contact.all.sort
	end

end