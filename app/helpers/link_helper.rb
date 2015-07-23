module LinkHelper
  def set_active_class link
    current_page?(link) ? 'active-nav' : ''
  end
end