ActiveAdmin.register Restaurant do
  index do
    column :name
    column :tag_list
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :tag_list, label: 'Tags'
    end
    f.actions
  end
end
