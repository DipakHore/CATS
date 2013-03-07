class ActivityItemsController < ApplicationController
  # GET /activity_items
  # GET /activity_items.json
  def index
    @activity_items = ActivityItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_items }
    end
  end

  # GET /activity_items/1
  # GET /activity_items/1.json
  def show
    @activity_item = ActivityItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_item }
    end
  end

  # GET /activity_items/new
  # GET /activity_items/new.json
  def new
    @activity_item = ActivityItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_item }
    end
  end

  # GET /activity_items/1/edit
  def edit
    @activity_item = ActivityItem.find(params[:id])
  end

  # POST /activity_items
  # POST /activity_items.json
  def create
    @activity_item = ActivityItem.new(params[:activity_item])

    respond_to do |format|
      if @activity_item.save
        format.html { redirect_to @activity_item, notice: 'Activity item was successfully created.' }
        format.json { render json: @activity_item, status: :created, location: @activity_item }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_items/1
  # PUT /activity_items/1.json
  def update
    @activity_item = ActivityItem.find(params[:id])

    respond_to do |format|
      if @activity_item.update_attributes(params[:activity_item])
        format.html { redirect_to @activity_item, notice: 'Activity item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_items/1
  # DELETE /activity_items/1.json
  def destroy
    @activity_item = ActivityItem.find(params[:id])
    @activity_item.destroy

    respond_to do |format|
      format.html { redirect_to activity_items_url }
      format.json { head :no_content }
    end
  end
end
