# take in category, dificulty, maybe questions
require "httparty"
require "pry"
class Api::V1::QuestionsController < ApplicationController
  def index
    response = HTTParty.get("https://opentdb.com/api.php?amount=10&difficulty=#{params[:difficulty]}")
    data = JSON.parse(response.body, symbolize_names: true)[:results]
    render json: data
  end

  private

  def question_params
    params.permit(:difficulty)
  end
end
