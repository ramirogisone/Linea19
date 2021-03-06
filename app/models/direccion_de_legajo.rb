class DireccionDeLegajo < ActiveRecord::Base
  belongs_to :legajo
  
  validates_presence_of :tipo_direccion, :direccion
  validates_uniqueness_of :tipo_direccion, :scope => :legajo_id
  validates_uniqueness_of :direccion, :scope => :legajo_id
end
