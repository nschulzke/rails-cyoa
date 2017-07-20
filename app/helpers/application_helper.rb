module ApplicationHelper
  def login_helper css_class = ''
    if current_user
      (link_to "Logout", destroy_user_session_path, method: :delete, class: css_class)
    else
      (link_to "Register", new_user_registration_path, class: css_class) +
      " " +
      (link_to "Login", new_user_session_path, class: css_class)
    end
  end
end
