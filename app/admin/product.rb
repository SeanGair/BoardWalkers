ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :description, :price, :stock_quantity, :discount, :new, :demo, :released, :updated, :category_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form :html => {:multipart => true} do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :description
      f.input :price
      f.input :stock_quantity
      f.input :discount
      f.input :new
      f.input :demo
      f.input :released
      f.input :updated
      f.input :category_id
      f.input :image
    end
    f.actions
  end


end
