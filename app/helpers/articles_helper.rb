module ArticlesHelper
    def wrap_delete_method
        {
            turbo_method: :delete,
            turbo_confirm: "Are you sure?"
        }
    end

    def notice_edit_error(errors, attribute)
        unless errors.empty?
            content_tag(:div, class: "danger-message") do
                # puts errors.methods
                errors.full_messages_for(attribute).map do |message|
                    message
                end.join(content_tag(:br)).html_safe
            end
        end
    end
end
