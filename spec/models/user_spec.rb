require 'rails_helper'

RSpec.describe User, type: :model do
  it { expect(subject).to validate_presence_of(:username) }
  it { expect(subject).to validate_uniqueness_of(:username) }
  it { expect(subject).to have_many(:messages) }
  it { expect(subject).to have_many(:chatrooms) }
end
