class Answer < ActiveRecord::Base
  belongs_to :question
  validates :text, length: { minimum: 50 }
  validates :question, presence: true
end
