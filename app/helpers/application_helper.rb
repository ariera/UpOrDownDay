module ApplicationHelper
  def login_actions
    if user_signed_in?
      link_to 'logout', destroy_user_session_path
    else
      login = link_to 'login', new_user_session_path
      signup = link_to 'sign up',  new_user_registration_path
      "#{login} or #{signup}".html_safe
    end
  end
end
