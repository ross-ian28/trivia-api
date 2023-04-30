require "rails_helper"

RSpec.describe "POST #create" do
  describe "questions request" do
    it "returns questions created with difficulty and category", :vcr do
      params = {
        difficulty: "easy",
        category: "9",
      }
      headers = { "Content-Type" => "application/json" }

      post "/api/v1/questions", headers: headers, params: JSON.generate(params)

      questions = JSON.parse(response.body, symbolize_names: true)[:questions]

      expect(response).to be_successful

      expect(questions).to be_an(Array)
      expect(questions.length).to eq(10)
      expect(questions[0]).to include :question, :category, :difficulty, :correct_answer, :incorrect_answers
      expect(questions[0][:question]).to be_a(String)
      expect(questions[0][:category]).to be_a(String)
      expect(questions[0][:difficulty]).to be_a(String)
      expect(questions[0][:correct_answer]).to be_a(String)
      expect(questions[0][:incorrect_answers]).to be_an(Array)
    end

    it "returns questions created with difficulty and no category", :vcr do
      params = {
        difficulty: "easy",
        category: "",
      }
      headers = { "Content-Type" => "application/json" }

      post "/api/v1/questions", headers: headers, params: JSON.generate(params)

      questions = JSON.parse(response.body, symbolize_names: true)[:questions]

      expect(response).to be_successful

      expect(questions).to be_an(Array)
      expect(questions.length).to eq(10)
      expect(questions[0]).to include :question, :category, :difficulty, :correct_answer, :incorrect_answers
      expect(questions[0][:question]).to be_a(String)
      expect(questions[0][:category]).to be_a(String)
      expect(questions[0][:difficulty]).to be_a(String)
      expect(questions[0][:correct_answer]).to be_a(String)
      expect(questions[0][:incorrect_answers]).to be_an(Array)
    end
  end
end
