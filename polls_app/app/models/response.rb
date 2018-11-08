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
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :responder_id,
    class_name: :User
end
