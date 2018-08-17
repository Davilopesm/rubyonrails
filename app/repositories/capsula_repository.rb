class CapsulaRepository

  def create(capsula) 
    capsula = Capsula.new(name: capsula[:name], instrucoes_preparo: capsula[:instrucoes_preparo], tempo_preparo: capsula[:tempo_preparo], tipo_id: capsula[:tipo_id])
    save(capsula) 
  end

  def find(id)
    Capsula.select("id, name, instrucoes_preparo, tempo_preparo").where(id: id)
  end

  def findAllData(id)
    Capsula.find(id)
  end

  def update (capsula)
    update = findAllData(capsula[:id])
    update.update_attributes(name: capsula[:name], instrucoes_preparo: capsula[:instrucoes_preparo], tempo_preparo: capsula[:tempo_preparo])
  end

  def destroy (capsula)
   delete = findAllData(capsula[:id])
   delete.destroy
  end

  def save(capsula)
    capsula.save
  end

end