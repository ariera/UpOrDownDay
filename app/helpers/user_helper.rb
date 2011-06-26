module UserHelper
  def show_status(history)
    text = history.up? ? ["up", ":)"] : ["down", ":("]
    "<li class='#{text[0]}' title='#{history.created_at.strftime("%Y-%m-%d")}'>#{text[1]}</li>".html_safe
  end
end