require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it { is_expected.to belong_to(:course) }
  it { is_expected.to belong_to(:section) }

  it { should have_many(:tinymce_images) }

  it { is_expected.to validate_presence_of(:course) }
  it { is_expected.to validate_presence_of(:section) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:section_id) }
end
