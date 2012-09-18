ActiveAdmin.register Restaurant do
  form do |f|
    f.inputs do
      f.input :name
      f.input :tag_list, label: 'Tags'
    end
    f.actions
  end
end
