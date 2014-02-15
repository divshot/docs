module Jekyll
  module ApiMethodLabelFilter
    def api_method_label(input)
      case input
      when "POST"
        "info"
      when "PUT"
        "warning"
      when "GET"
        "success"
      when "DELETE"
        "danger"
      else
        "default"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::ApiMethodLabelFilter)