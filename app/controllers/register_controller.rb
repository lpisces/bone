class RegisterController < ApplicationController

 def new
    @user = User.new
  end

  def create
    @user = User.new (params[:user])
    if @user.save
      redirect_to :root
    else 
      render 'new'
    end
  end

end