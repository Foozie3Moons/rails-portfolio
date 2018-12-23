class MessagesController < ApplicationController
  def new
    @message = Message.new
    puts @message
    @message
  end

  def create
    @message = Message.new message_params

    if message_params[:first_name].present?
      MessageMailer.notify_spam(@message).deliver

      redirect_to contact_path, notice: "Message received, thanks!"
    elsif @message.valid?
      MessageMailer.contact(@message).deliver
      MessageMailer.copy(@message).deliver
      redirect_to contact_path, notice: "Message received, thanks! Check your email for a copy of what was sent."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body, :first_name)
  end
end
