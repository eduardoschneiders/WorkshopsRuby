class NoticeController < ApplicationController
  def index
  	@notices = Notice.all
  end

  def show
  end
end
