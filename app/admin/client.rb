ActiveAdmin.register Client do
  index do
    column :name
    column :phone_number
    column :email
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :phone_number
      f.input :email
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit admin_user: [:email, :password, :password_confirmation]
    end
  end
end
