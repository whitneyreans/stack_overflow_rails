class UsersController < ApplicationController

  def index
    @users = User.all
    @questions = Question.all
    @answers = Answer.all
  end

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User has been added!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem, yo."
      redirect_to :back
    end
  end

  def show
  end

  def update
  end



  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
