ActiveAdmin.register User do
  #form :partial => "form"
  #attr_accessible :first_name, :last_name, :account_type_id, :email, :password, :password_confirmation
  
  form do |f|
      f.inputs  do
        f.input :first_name
        f.input :last_name
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :account_type_id,  :as => :radio, :collection => AccountType.all
        f.buttons
      end
  end
  
end
