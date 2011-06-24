module UserHelper
  def show_status(history)
    html_class = history.up? ? "up" : "down"
    "<li class='#{html_class}'>#{html_class}</li>".html_safe
  end
end