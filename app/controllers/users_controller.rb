class UsersController < ApplicationController
  include UsersHelper

  def show
    @user = User.find(params[:id])
    #debugger
  end


  def new
    @user = User.new
    @password_spec = password_spec

  end
end
