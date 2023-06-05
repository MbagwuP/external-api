yum_package 'httpd' do
    action :install
  end
  
  file 'index.html' do
    content "Hello everyone from DevOpsSchool"
  end
  
  cookbook_file '/var/www/html/index.html' do
    source "index.html"
    action :create
  end
  
  service 'httpd' do
    action :start
  end
  
  bash 'extract_module' do
    code <<-EOH
      cp index.html /var/www/html/index.html
    EOH