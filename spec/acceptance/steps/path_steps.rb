def path_to(page_name)
  case page_name
  when 'dashboard'
    admin_dashboard_path
  end
end

placeholder(:page_name) { match /.*/ }

step 'I am on the :page_name( page)' do |page_name|
  visit path_to(page_name)
end

step 'I should be on the :page_name( page)' do |page_name|
  page.current_path.should =~ /#{page_name}/
end
