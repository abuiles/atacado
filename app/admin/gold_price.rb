# -*- coding: utf-8 -*-
ActiveAdmin.register GoldPrice do
  index do
    column :value
    column :created_at
    default_actions
  end

  filter :value

  form do |f|
    f.inputs "Preço do ouro para hoje" do
      f.input :value
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit gold_price: [:value]
    end
  end
end
