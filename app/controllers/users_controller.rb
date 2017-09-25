class UsersController < ApplicationController
  include UsersHelper


  before_action  :init
  def init
    @password_spec = password_spec
  end

  def show
    #  debugger
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
        @user=nil
        @message = "Error locating record"
        render "user_err"
        return
    end
    #debugger
  end


  def new
    @user = User.new


  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "User account created.  Welcome to Microposts"
      # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation, :alias)
  end


end
