class EmailsController < ApplicationController
  def new
    email 		= params[:email][:from]
    location  	= params[:email][:location]
    name 		= params[:email][:name]

    ClientMailer.client_email(email, location, name).deliver

    redirect_to root_path
  end
end
