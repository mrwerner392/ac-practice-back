class ChatsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chats_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise NotImplementedError
  end
end
