def path_to(page_name)
  case page_name
  when 'dashboard'
    admin_dashboard_path
  when 'random page'
    root_path
  end
end

placeholder(:page_name) { match /.*/ }

step 'I am on the :page_name' do |page_name|
  visit path_to(page_name)
end

step 'I should be on the :page_name' do |page_name|
  page.current_path.should =~ /#{page_name}/
end

step 'I should be at the tags page for :tag' do |tag|
  page.current_path.should == tags_path(tag)
end
