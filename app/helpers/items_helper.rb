module ItemsHelper# helpers/animals_helper.rb
  def sti_type_path(type = "item", item = nil, action = nil)
    send "#{format_sti(action, type, type)}_path", item
  end

  def format_sti(action, type, item)
    action || item ? "#{format_action(action)}#{type.underscore}" : "#{type.underscore.pluralize}"
  end

  def format_action(action)
    action ? "#{action}_" : ""
  end
end
