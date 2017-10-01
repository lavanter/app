class Instituto < ApplicationRecord
  has_many :cursos, dependent: :destroy
end
