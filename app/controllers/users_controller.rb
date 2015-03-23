class UsersController < ApplicationController

  def index
    @users = User.all
    @questions = Question.all
    @answers = Answer.all
  end




  private
    def user_params
      params.require(:user).permit(:name)
    end

end
