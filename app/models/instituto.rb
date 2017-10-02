class Instituto < ApplicationRecord
  has_many :cursos, dependent: :destroy
  has_many :materia, dependent: :destroy
end
