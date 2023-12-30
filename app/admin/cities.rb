ActiveAdmin.register City do
  config.remove_filter :posts
  permit_params :name, user_ids: []
  index do
    selectable_column
    id_column
    column :name
    column :number_of_users do |city|
      city.users.count
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :number_of_users do |city|
        city.users.count
      end
    end
  end
end
