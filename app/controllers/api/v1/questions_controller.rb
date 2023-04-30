require "httparty"

class Api::V1::QuestionsController < ApplicationController
  def create
    if params[:category] != ""
      response = HTTParty.get("https://opentdb.com/api.php?amount=10&category=#{params[:category].to_i}&difficulty=#{params[:difficulty]}")
    else
      response = HTTParty.get("https://opentdb.com/api.php?amount=10&difficulty=#{params[:difficulty]}")
    end

    data = JSON.parse(response.body, symbolize_names: true)[:results]
    render json: QuestionsSerializer.format_questions(data), content_type: "application/json"
  end

  private
  def question_params
    params.permit(:difficulty, :category)
  end
end
