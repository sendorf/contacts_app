class ContactsController < ApplicationController

	def index
		@contacts = Contact.all.sort
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			redirect_to @contact
		else
			redirect_to new_server_path(@contact)
		end
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
		@contact = Contact.find(params[:id])
	end

end