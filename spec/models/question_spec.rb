require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should have_many(:answers) }
  it { should validate_length_of(:title).is_at_least(40) }
  it { should validate_length_of(:text).is_at_least(150) }
end
