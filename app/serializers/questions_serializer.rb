require 'htmlentities'

class QuestionsSerializer
  def self.format_questions(questions)
    entities = HTMLEntities.new

    sanitized_questions = questions.map do |question|
      {
        question: entities.decode(question[:question]),
        category: question[:category],
        difficulty: question[:difficulty],
        correct_answer: entities.decode(question[:correct_answer]),
        incorrect_answers: question[:incorrect_answers].map { |answer| entities.decode(answer) }
      }
    end

    {
      questions: sanitized_questions,
      score: 0
    }
  end
end
