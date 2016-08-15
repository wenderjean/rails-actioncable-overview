require 'rails_helper'

RSpec.describe Message, type: :model do
	it { expect(subject).to validate_presence_of(:content) }
	it { expect(subject).to belong_to(:chatroom) }
	it { expect(subject).to belong_to(:user) }
end
