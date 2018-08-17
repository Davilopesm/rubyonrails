class CapsulasRepository

  def find(id)
    Capsula.select("id, name").where(tipo_id: id)
  end

end