require 'rails_helper'

RSpec.describe ChatroomsController, type: :controller do
  describe 'POST create' do
    context 'unlogged user' do
      it 'redirects to login page' do
        post :create, params: attributes_for(:chatroom)
        expect(subject).to redirect_to(new_user_session_path)
      end
    end

    context 'logged user' do
      before(:each) do
        sign_in create(:user)
      end

      context 'chatroom with right params' do
        it 'returns http success' do
          post :create, params: { chatroom: attributes_for(:chatroom) }
          expect(subject).to redirect_to proc { chatroom_url(assigns[:chatroom]) }
        end

        it 'saves the cast' do
          expect { post :create, params: { chatroom: attributes_for(:chatroom) } }.to change(Chatroom, :count).by(1)
        end
      end
    end
  end
end
