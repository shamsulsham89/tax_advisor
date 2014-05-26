ActiveAdmin.register Mailing do
  
  
  #form :partial => "form"
  
  form do |f|
    f.inputs "Compose Mail" do
      f.input :email
      f.input :subject
      f.input :body
    end
    f.inputs  "Attachment" do
      f.input :avatar, :as => :file , :for => :attachment
      #f.input :avatar, :as => :file, :hint => "Or Insert Remote avatar URL Below:"
      #f.input :remote_avatar_url
    end
    f.buttons
  end
  
  
  controller do 
  
    def new
      @mailing = Mailing.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @mailing }
      end
    end

 

    # POST /mailings
    # POST /mailings.json
    def create
      @mailing = Mailing.new(params[:mailing])
    
      raise @mailing.inspect
      respond_to do |format|
     
        if @mailing.save
          #MailingMailer.compose_mail(@mailing).deliver
          format.html { redirect_to admin_mailing_path(@mailing), notice: "Mail was successfully sent to #{@mailing.email}." }
          #format.json { render json: @mailing, status: :created, location: @mailing }
        else
          format.html { render action: "new" }
          format.json { render json: @mailing.errors, status: :unprocessable_entity }
        end
      end
    end
  end
end
