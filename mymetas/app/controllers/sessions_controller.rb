class SessionsController < ApplicationController

  
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session }
    end
  end

  def create
    @session = Session.new(params[:session])

    respond_to do |format|
      if @session.save
        format.html { redirect_to @session, notice: 'Session was successfully created.' }
        format.json { render json: @session, status: :created, location: @session }
      else
        format.html { render action: "new" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
  end
end
