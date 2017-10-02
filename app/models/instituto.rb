class Instituto < ApplicationRecord
  has_many :cursos, dependent: :destroy
  has_many :materias, dependent: :destroy
  has_many :salas, dependent: :destroy
end
