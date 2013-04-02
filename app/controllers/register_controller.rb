# encoding: utf-8
class RegisterController < ApplicationController
  include SessionHelper
  before_filter :require_signed_in, :only => [:profile, :edit_profile, :update_profile]

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

  def profile
  end

  def edit_profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to profile_path, notice: '账户信息更新成功' }
        format.json { head :no_content }
      else
        format.html { render action: "edit_profile" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

end
