class SessionsController < ApplicationController 


  def new 
  end 

  def create 
    if params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    
    
  end

  def destroy 
    session.delete :username
  end 
end 
