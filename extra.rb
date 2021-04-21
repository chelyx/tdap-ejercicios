class Tamanio
  include Comparable

  def initialize(unidad, cantidad)
    @unidad = unidad
    @cantidad = cantidad
  end

  def <=>(other)
    self.size <=> other.size
  end

  def size
    unidades = %w[KB MB GB TB PB]
    bytes = 1024 ** (unidades.index(@unidad) + 1)
    bytes * @cantidad
  end

end




# Y se podrían crear como:
# a = Tamanio.new("KB", 1024)
# b = Tamanio.new("MB", 1)
# agregar lo necesario para que pueda hacer esto
# Tamanio.new("KB", 1000) < Tamanio.new("MB", 2) # y me de true
# [Tamanio.new("KB", 1025), Tamanio.new("MB", 1), Tamanio.new("KB", 42)].max # y me de el primero de esa lista