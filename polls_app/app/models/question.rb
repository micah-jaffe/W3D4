# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  text       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer
#

class Question < ApplicationRecord
  validates :text, presence: true
  
  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll
    
  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice
    
  has_many :responses,
    through: :answer_choices,
    source: :responses
    
  def results_n_plus_1
    res = Hash.new(0)
    self.responses.each do |response|
      res[response.answer_choice.text] += 1
    end
    res
  end
  
  def results
    res = Hash.new(0)
    with_answers = self.responses.includes(:answer_choice)
    with_answers.each do |response|
      res[response.answer_choice.text] += 1
    end
    res
  end
    
end
