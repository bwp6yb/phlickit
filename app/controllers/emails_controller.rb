class EmailsController < ApplicationController
  def new
    email = params[:email][:from]
    body  = params[:email][:body]

    ClientMailer.client_email(email, body).deliver

    redirect_to root_path
  end
end
