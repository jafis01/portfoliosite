class InquiryController < ApplicationController

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      InquiryMailer.send_mail(inquiry).deliver_now
      redirect_to root_url
    else
      render 'root'
    end
  end
end