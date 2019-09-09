require 'rails_helper'

RSpec.describe DisciplineCourse, type: :model do
  it { is_expected.to belong_to(:discipline) }
  it { is_expected.to belong_to(:course) }

  it { is_expected.to validate_presence_of(:discipline) }
  it { is_expected.to validate_presence_of(:course) }
end