class MailingsController < ApplicationController
  # GET /mailings
  # GET /mailings.json
 
  before_filter :authenticate_user!
  #layout :user_layout
  
  def index
    @mailings = Mailing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mailings }
    end
  end

  # GET /mailings/1
  # GET /mailings/1.json
  def show
    @mailing = Mailing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mailing }
    end
  end

  # GET /mailings/new
  # GET /mailings/new.json
  def new
    @mailing = Mailing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mailing }
    end
  end

  # GET /mailings/1/edit
  def edit
    @mailing = Mailing.find(params[:id])
  end

  # POST /mailings
  # POST /mailings.json
  def create
    @mailing = Mailing.new(params[:mailing])
    
    #raise @mailing.inspect
    respond_to do |format|
     
      if @mailing.save
        MailingMailer.compose_mail(@mailing).deliver
        format.html { redirect_to new_mailing_path, notice: "Mail was successfully sent to #{@mailing.email}." }
        format.json { render json: @mailing, status: :created, location: @mailing }
      else
        format.html { render action: "new" }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mailings/1
  # PUT /mailings/1.json
  def update
    @mailing = Mailing.find(params[:id])

    respond_to do |format|
      if @mailing.update_attributes(params[:mailing])
        format.html { redirect_to @mailing, notice: 'Mailing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailings/1
  # DELETE /mailings/1.json
  def destroy
    @mailing = Mailing.find(params[:id])
    @mailing.destroy

    respond_to do |format|
      format.html { redirect_to mailings_url }
      format.json { head :no_content }
    end
  end
end
