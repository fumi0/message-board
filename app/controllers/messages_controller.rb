class MessagesController < ApplicationController
  def index
    @message = Message.new
    # @message = Message.find(1)
    @messages = Message.all
  end

  def create
    # params[:message][:id] = 1
    # puts "!!!!!!!!!!!!"
    # puts params
    # puts message_params
    # puts "!!!!!!!!!!!!"
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ## ここまで
end