require 'rails_helper'

RSpec.describe TinymceImage, type: :model do
  it { should belong_to(:owner) }
end
