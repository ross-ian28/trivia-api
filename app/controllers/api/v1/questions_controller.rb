require "httparty"

class Api::V1::QuestionsController < ApplicationController
  def create
    response = HTTParty.get("https://opentdb.com/api.php?amount=10&difficulty=#{params[:difficulty]}")
    data = JSON.parse(response.body, symbolize_names: true)[:results]
    render json: QuestionsSerializer.format_questions(data)
  end

  private

  def question_params
    params.permit(:difficulty)
  end
end
