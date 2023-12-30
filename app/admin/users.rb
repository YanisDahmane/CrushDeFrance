ActiveAdmin.register User do
  config.remove_filter :posts
  permit_params :email, :password, :password_confirmation, city_ids: []

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :cities, as: :check_boxes, collection: City.all
    end
    f.actions
  end
end
