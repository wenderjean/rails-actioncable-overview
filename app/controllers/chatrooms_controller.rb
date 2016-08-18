class ChatroomsController < ApplicationController

	def index
		@chatrooms = Chatroom.all
	end

	def show
		@chatroom = Chatroom.find_by_id(params[:id])
		@message = Message.new
	end

	def new
		@chatroom = Chatroom.new
	end

	def create
		chatroom = Chatroom.new(chatroom_params)
		chatroom.save
		respond_with chatroom, location: -> { chatrooms_url }
	end

	private

	def chatroom_params
		params.require(:chatroom).permit(:topic)
	end
end
