module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def current_class?(test_path)
    return 'active' if request.fullpath == test_path
    ''
  end
  
end
