# == Schema Information
#
# Table name: menus
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  descripcion     :string(255)
#  icono           :string(255)
#  user_created_id :integer
#  user_updated_id :integer
#  estado          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Menu < ApplicationRecord
    has_many :opciones
    has_many :menu_roles

    validates_presence_of :nombre, :descripcion, :icono, message: ": este campo es obligatorio"
    validates :nombre, uniqueness: {case_sensitive: false, scope: :estado, message: "El nombre que intenta registrar ya existe" }

end
