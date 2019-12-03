class MessagesController < ApplicationController

  def index
    messages = Message.all
    render json: messages
  end

  def create
    chat = Chat.find(params[:chat_id])
    message = Message.new(chat: chat, name: params[:name], content: params[:content])
    if message.save
      # render json: chat
      MessagesChannel.broadcast_to(chat, ChatSerializer.new(chat))
    end
  end

end
