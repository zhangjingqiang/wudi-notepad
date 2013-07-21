# coding: utf-8
class NotepadsController < ApplicationController
  load_and_authorize_resource :only => [:show,:new,:edit,:create,:update,:destroy]

  before_filter :authenticate_user!

  # GET /notepads
  # GET /notepads.json
  def index
    @notepads = Notepad.where(:user_id => current_user.id).page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notepads }
    end
  end

  # GET /notepads/1
  # GET /notepads/1.json
  def show
    @notepad = Notepad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notepad }
    end
  end

  # GET /notepads/new
  # GET /notepads/new.json
  def new
    @notepad = Notepad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notepad }
    end
  end

  # GET /notepads/1/edit
  def edit
    @notepad = Notepad.find(params[:id])
  end

  # POST /notepads
  # POST /notepads.json
  def create
    @notepad = Notepad.new(params[:notepad])
    @notepad.user_id = current_user.id

    respond_to do |format|
      if @notepad.save
        format.html { redirect_to @notepad, notice: '成功创建记事。' }
        format.json { render json: @notepad, status: :created, location: @notepad }
      else
        format.html { render action: "new" }
        format.json { render json: @notepad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notepads/1
  # PUT /notepads/1.json
  def update
    @notepad = Notepad.find(params[:id])

    respond_to do |format|
      if @notepad.update_attributes(params[:notepad])
        format.html { redirect_to @notepad, notice: '成功修改记事。' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notepad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notepads/1
  # DELETE /notepads/1.json
  def destroy
    @notepad = Notepad.find(params[:id])
    @notepad.destroy

    respond_to do |format|
      format.html { redirect_to notepads_url }
      format.json { head :no_content }
    end
  end
end
