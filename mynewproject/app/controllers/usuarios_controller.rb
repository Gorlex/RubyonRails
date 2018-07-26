class UsuariosController < ApplicationController
  def new
  end

def create
 @usuario = Usuario.new usuario_params
 @usuario.save
end

def index 
  
 # listar nombres de tabla
  #debe estar en un  def index
  @allUsuarios = Usuario.all 

  #fin listar usuarios
 
   
end

  private 

  #para insertar valores en la tabla
  def usuario_params
    params.require(:usuario).permit(:nombre, :apellido, :correo) 
  end
  #fin insertar valores en la tabla

  
end

