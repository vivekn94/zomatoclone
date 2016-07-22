class MessagesController < ApplicationController

	def create
     @message = current_user.messages.build(message_params)
     @message.sender_id = current_user.id
     @receiver = User.find_by_email(params[:message][:emailid])
     @message.receiver_id = @receiver.id
     @message.save
     redirect_to :back

	end

  def destroy
    @message=Message.find(params[:id])
    @message.destroy
    redirect_to :back
  end

  private 

def message_params
    params.require(:message).permit(:content,:emailid)
  end
   
end
