class Comment < ApplicationRecord
    belongs_to :article
    before_validation :set_defaults
    validates :commenter, presence: true
    validates :body, presence: true, length: { minimum: 10, maximum: 500 }

    private
        def set_defaults
            # puts "#{self.commenter} - #{self.commenter.blank?}"
            self.commenter = "Anonymous" if self.commenter.blank?
        end
end
