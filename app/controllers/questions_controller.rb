class QuestionController < ApplicationController

  def index
    @questions = User.all
  end

  def new
    @user = User.find(params[:user_id])
    @question = @user.questions.new
  end

  def create
    @user = User.find(params[:user_id])
    @question = @user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Question has been added!"
      redirect_to user_index
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find(params[:user_id])
  end

  private
    def question_params
      params.require(:question).permit(:body)
    end

end
