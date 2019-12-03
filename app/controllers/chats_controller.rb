class ChatsController < ApplicationController

  def index
    chats = Chat.all
    render json: chats, include: '**'
  end

  def create
    chat = Chat.new(title: params[:title])
    if chat.save
      ActionCable.server.broadcast('chats_channel', ChatSerializer.new(chat))
      # render json: chat, include: '**'
    end
  end

end
