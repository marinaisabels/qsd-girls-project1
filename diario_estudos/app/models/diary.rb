class Diary < ApplicationRecord
    belongs_to :category
    validates :title, presence: { message: 'não pode ficar em branco' }
  
    def finalized?
      finalized_at.present?
    end
end