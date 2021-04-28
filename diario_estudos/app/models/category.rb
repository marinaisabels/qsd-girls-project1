class Category < ApplicationRecord
    has_many :diaries, dependent: :destroy
  end
  