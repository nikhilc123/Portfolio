module ApplicationHelper
  def login_helper
    #check if the class is User or OpenStruct
    # two ways: is_a?(OpenStruct) or User OR simply pass User model
    # concat because ruby always return last statement
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) +
      ("<br/>".html_safe) +
      (link_to "Register", new_user_registration_path)
    end
  end
end
