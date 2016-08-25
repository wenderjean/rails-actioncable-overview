class ChatroomsController < ApplicationController
  before_action :authenticate_user!

	def index
		@chatrooms = Chatroom.all
	end

	def show
		@chatroom = Chatroom.friendly.find(params[:id])
		@message = Message.new
	end

	def new
		@chatroom = Chatroom.new
	end

	def create
		@chatroom = Chatroom.new(chatroom_params)
    @chatroom.save
    respond_with @chatroom
	end

	private

	def chatroom_params
		params.require(:chatroom).permit(:topic)
	end
end
