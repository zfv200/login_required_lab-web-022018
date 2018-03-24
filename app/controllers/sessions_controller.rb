class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      @current_user = session[:name]
      render :hello
    end
  end

  def destroy
    session.delete :name

    redirect_to root_path
  end


end
