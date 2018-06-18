class SessionsController < ApplicationController

  def new
    binding.pry
  end

  def create
    if params[:name] == nil || params[:name].blank?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]

      redirect_to '/'
    end
  end

  def destroy
    session.delete(:name)
  	redirect_to '/'
  end
end