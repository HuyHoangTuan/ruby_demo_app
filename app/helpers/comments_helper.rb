module CommentsHelper
    def render_comment_form(form)
        content_tag(:div) do
            content_tag(:p) do
                concat(form.label :commenter)
                concat(": ".html_safe)
                concat(form.text_field :commenter)
                concat(content_tag(:br))
                concat(form.label :body)
                concat(": ".html_safe)
                concat(form.text_area :body)
                concat(content_tag(:br))
                concat(form.submit)
            end
        end
    end

    def render_comment(comment, idx)
        content_tag(:div) do
            concat(content_tag(:p, options: idx))
            concat(". ".html_safe)
            concat(content_tag(:p, options: comment.commenter))
            concat(": ".html_safe)
            concat(content_tag(:p, options: comment.body))
        end
    end
end
