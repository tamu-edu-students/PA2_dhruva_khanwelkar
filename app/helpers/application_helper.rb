module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    arrow = column == sort_column ? (sort_direction == "asc" ? "↑" : "↓") : ""
    css_class = column == sort_column ? (sort_direction == "asc" ? "sorted-asc" : "sorted-desc") : ""
    symbol = column == sort_column ? (sort_direction == "asc" ? " (ascending)" : " (descending)") : ""
    link_to "#{title} #{arrow}".html_safe, { sort: column, direction: direction }, class: css_class, aria: { label: "#{title} sorted#{symbol}" }

  end
end
