class Comment < ApplicationRecord
    belongs_to :article
    before_validation :set_defaults
    validates :commenter, presence: true
    validates :body, presence: true, length: { minimum: 10, maximum: 500 }

    private
        def set_defaults
            puts commenter
            puts commenter.blank?
            commenter = "Anonymous" if commenter.blank?
            puts commenter
        end
end
