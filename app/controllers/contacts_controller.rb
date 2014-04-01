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
			redirect_to new_contact_path(@contact)
		end
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update

		@contact = Contact.find(params[:id])

		if @contact.update_attributes(params[:contact])
			redirect_to @contact
		else
			redirect_to edit_server_path(@contact)
		end
	end

	def destroy
		@contact = Contact.find(params[:id])
		if @contact.destroy
			redirect_to root_path
		else
			redirect_to @contact
		end
	end
end