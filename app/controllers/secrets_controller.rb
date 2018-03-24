class SecretsController < ApplicationController

  def show
    if !session[:name] || session[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      render :show
    end
  end

end
