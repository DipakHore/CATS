class DownloadItemsController < ApplicationController
  # GET /download_items
  # GET /download_items.json
  def index
    @download_items = DownloadItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @download_items }
    end
  end

  # GET /download_items/1
  # GET /download_items/1.json
  def show
    @download_item = DownloadItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @download_item }
    end
  end

  # GET /download_items/new
  # GET /download_items/new.json
  def new
    @download_item = DownloadItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @download_item }
    end
  end

  # GET /download_items/1/edit
  def edit
    @download_item = DownloadItem.find(params[:id])
  end

  # POST /download_items
  # POST /download_items.json
  def create
    @download_item = DownloadItem.new(params[:download_item])

    respond_to do |format|
      if @download_item.save
        format.html { redirect_to @download_item, notice: 'Download item was successfully created.' }
        format.json { render json: @download_item, status: :created, location: @download_item }
      else
        format.html { render action: "new" }
        format.json { render json: @download_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /download_items/1
  # PUT /download_items/1.json
  def update
    @download_item = DownloadItem.find(params[:id])

    respond_to do |format|
      if @download_item.update_attributes(params[:download_item])
        format.html { redirect_to @download_item, notice: 'Download item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @download_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /download_items/1
  # DELETE /download_items/1.json
  def destroy
    @download_item = DownloadItem.find(params[:id])
    @download_item.destroy

    respond_to do |format|
      format.html { redirect_to download_items_url }
      format.json { head :no_content }
    end
  end
end
