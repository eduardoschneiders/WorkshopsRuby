class EventsController < ApplicationController
  def index
  	@events = Event.find_all_by_user_id(current_user)
  end

  def show
  	@event = Event.find(params[:id])
  end

  def new
  	@event = Event.new
  end

  def create
    #params[:event_ends_at] = params[:ends_at][:year].to_i
    #@allparams = params[:event]
  	@event = Event.new(params[:event])

    respond_to do |format|
  	 if @event.save
        format.html { redirect_to @event, notice: 'User was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
end
