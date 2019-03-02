module ApplicationHelper
  def login_helper style
    #check if the class is User or OpenStruct
    # two ways: is_a?(OpenStruct) or User OR simply pass User model
    # concat because ruby always return last statement
    if current_user.is_a?(GuestUser)
      (link_to "Login", new_user_session_path, class: style) +
      (" ".html_safe) +
      (link_to "Register", new_user_registration_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting #{session[:source]} and you are on #{layout_name} page"
      content_tag(:p, "#{greeting}", class: 'source-greeting')
    end
  end

  def copyright_generator
    @copyright = CustomNikhil::Render.copyright "Nikhil Chikorde", "All rights reserved"
  end
end
