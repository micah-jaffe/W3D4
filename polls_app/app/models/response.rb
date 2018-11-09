# == Schema Information
#
# Table name: responses
#
#  id           :bigint(8)        not null, primary key
#  responder_id :integer          not null
#  answer_id    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Response < ApplicationRecord
  validate :not_duplicate_response
  
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :responder_id,
    class_name: :User
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice
    
  has_one :question,
    through: :answer_choice,
    source: :question
    
  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end
  
  def respondent_already_answered?
    sibling_responses.exists?(responder_id: self.responder_id)
  end
  
  def not_duplicate_response
    if respondent_already_answered?
      errors[:base] << 'This user has already responded.'
    end
  end
end
