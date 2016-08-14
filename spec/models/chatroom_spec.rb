require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it { expect(subject).to validate_presence_of(:topic) }
  it { expect(subject).to validate_uniqueness_of(:topic) }
  it { expect(subject).to have_many(:messages) }
  it { expect(subject).to have_many(:users) }
end
