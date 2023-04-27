require "httparty"
require "pry"
class Api::V1::QuestionsController < ApplicationController
  def create
    if params[:category] != ""
      response = HTTParty.get("https://opentdb.com/api.php?amount=10&category=#{params[:category].to_i}&difficulty=#{params[:difficulty]}")
      data = JSON.parse(response.body, symbolize_names: true)[:results]
      render json: QuestionsSerializer.format_questions(data)
    else
      response = HTTParty.get("https://opentdb.com/api.php?amount=10&difficulty=#{params[:difficulty]}")
      data = JSON.parse(response.body, symbolize_names: true)[:results]
      render json: QuestionsSerializer.format_questions(data)
    end
  end

  private

  def question_params
    params.permit(:difficulty, :category)
  end
end
