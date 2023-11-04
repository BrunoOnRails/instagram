class PostMailer < ApplicationMailer
    def send_issue
        @post = params[:user]
        mail(to: "to@example.com", subject: @user.username)
    end
end