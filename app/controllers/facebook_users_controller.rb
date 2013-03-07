class FacebookUsersController < ApplicationController
  # GET /facebook_users
  # GET /facebook_users.json
  def index
    @facebook_users = FacebookUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facebook_users }
    end
  end

  # GET /facebook_users/1
  # GET /facebook_users/1.json
  def show
    @facebook_user = FacebookUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facebook_user }
    end
  end

  # GET /facebook_users/new
  # GET /facebook_users/new.json
  def new
    @facebook_user = FacebookUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facebook_user }
    end
  end

  # GET /facebook_users/1/edit
  def edit
    @facebook_user = FacebookUser.find(params[:id])
  end

  # POST /facebook_users
  # POST /facebook_users.json
  def create
    @facebook_user = FacebookUser.new(params[:facebook_user])

    respond_to do |format|
      if @facebook_user.save
        format.html { redirect_to @facebook_user, notice: 'Facebook user was successfully created.' }
        format.json { render json: @facebook_user, status: :created, location: @facebook_user }
      else
        format.html { render action: "new" }
        format.json { render json: @facebook_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facebook_users/1
  # PUT /facebook_users/1.json
  def update
    @facebook_user = FacebookUser.find(params[:id])

    respond_to do |format|
      if @facebook_user.update_attributes(params[:facebook_user])
        format.html { redirect_to @facebook_user, notice: 'Facebook user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facebook_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebook_users/1
  # DELETE /facebook_users/1.json
  def destroy
    @facebook_user = FacebookUser.find(params[:id])
    @facebook_user.destroy

    respond_to do |format|
      format.html { redirect_to facebook_users_url }
      format.json { head :no_content }
    end
  end
end
