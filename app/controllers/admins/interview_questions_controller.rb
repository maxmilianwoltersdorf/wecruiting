class Admins::InterviewQuestionsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'
  
  def index
    @interview_questions = InterviewQuestion.all
  end
  
  def new
    @interview_question = InterviewQuestion.new
  end
  
  def create
    InterviewQuestion.create(params[:interview_question])
    redirect_to admins_interview_questions_path
  end
  
  def edit
    @interview_question = InterviewQuestion.find(params[:id])
  end
  
  def update
    @interview_question = InterviewQuestion.find(params[:id])
    @interview_question.update_attributes(params[:interview_question])
    redirect_to admins_interview_questions_path
  end
  

  
  def destroy
    InterviewQuestion.find(params[:id]).destroy
    redirect_to admins_interview_questions_path
  end
end
