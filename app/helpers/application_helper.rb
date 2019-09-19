module ApplicationHelper
  def header_link_item(name, path)
    class_name = 'nav-item'
    class_name << ' active' if current_page?(path)

    content_tag :il, class: class_name do
      link_to name, path, class: 'nav-link' 
    end
  end
end
