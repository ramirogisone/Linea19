class Admin::CoreController < ApplicationController
  before_filter :require_user

  def owner
    'Forum Development Group'
  end

  def app_name
    'VyB SRL - Linea 19'
  end

  set_module :legajos
  set_module :direcciones_de_legajos
  set_module :documentos_de_legajos
  set_module :familiares_de_legajos

end

