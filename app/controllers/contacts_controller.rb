class ContactsController < ApplicationController

	def index
		@contacts = Contact.all.sort
	end

	def new
		@contact = Contact.new
	end
	
end