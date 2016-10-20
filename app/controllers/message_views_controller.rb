class MessageViewsController < ApplicationController
  def new
    @message = Message.find_by(name: params[:name])
  end

  def create
    @message = Message.find_by(name: message_params[:name])
    @message.password = message_params[:password]
    render 'messages/show'
  end

  private

  def message_params
    params.require(:message_view).permit(:name, :password)
  end
end
