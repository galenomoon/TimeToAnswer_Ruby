class Site::WelcomeController < ApplicationController
  def index
    @questions = Question.last_questions(params[:page])
  end
end
