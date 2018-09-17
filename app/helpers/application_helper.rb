module ApplicationHelper
  def is_current_user?(id)
    current_user.id == id
  end
end
