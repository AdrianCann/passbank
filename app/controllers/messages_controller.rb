class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    Message.create(message_params)
    redirect_to messages_path
  end

  def message_params
    params.require(:message).permit(:name, :body, :password)
  end
end
