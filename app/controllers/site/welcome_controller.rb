class Site::WelcomeController < ApplicationController
  def index
    @questions = Question.includes(:answers).page(params[:page])
  end
end
