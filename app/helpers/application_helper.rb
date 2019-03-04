module ApplicationHelper
  def login_helper style = ''
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
      #dynamically create html elements
      content_tag(:p, "#{greeting}", class: 'source-greeting')
    end
  end

  def copyright_generator
    @copyright = CustomNikhil::Render.copyright "Nikhil Chikorde", "All rights reserved"
  end

  def nav_items
    [
      {
          url: root_path,
          title: "Home"
      },
      {
          url: about_me_path,
          title: "About Me"
      },
      {
          url: contact_path,
          title: "Contact"
      },
      {
          url: blogs_path,
          title: "Blogs"
      },
      {
          url: portvolios_path,
          title: "Portfolio"
      },
      {
          url: tech_news_path,
          title: "Tech News"
      }
    ]
  end


  def nav_helper style, tag_type

    #heredoc with the exact indentation
# nav_links = <<NAV
# <#{tag_type}><a href="#{root_path}" class= "#{style} #{active? root_path}">Home</a></#{tag_type}>
# <#{tag_type}><a href="#{about_me_path}" class="#{style} #{active? about_me_path}">About Me</a></#{tag_type}>
# <#{tag_type}><a href="#{contact_path}" class="#{style} #{active? contact_path}">Contact</a></#{tag_type}>
# <#{tag_type}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blogs</a></#{tag_type}>
# <#{tag_type}><a href="#{portvolios_path}" class="#{style} #{active? portvolios_path}">Portfolio</a></#{tag_type}>
# NAV

    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  #layout pages - app.html, blog.html, portfolio.html main page
  def alerts
    alert = (flash[:alert] || flash[:notice] || flash[:error])
    if alert
      alert_generator alert
    end
  end

  #Site specific pages - message
  def alert_generator msg
    js add_gritter(msg, :title => "Nikhil says: ", :sticky => false)
  end
end