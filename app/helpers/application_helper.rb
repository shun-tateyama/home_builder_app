module ApplicationHelper
  def full_title(page_title)
    if page_title.blank?
      "ハウスメーカー"
    else
      "#{page_title}"
    end
  end
end
