class TipoRepository

  def all
    Tipo.all
  end

  def create(tipo) 
    tipo = Tipo.new(name: tipo[:name])
    save(tipo) 
  end

  def find(id)
    Tipo.find(id)
  end

  def update (tipo)
    update = find(tipo[:id])
    update.update_attributes(name: tipo[:name])
  end

  def destroy (tipo)
    delete = find(tipo[:id])
    delete.destroy
  end

  def save(tipo)
    tipo.save
  end



end