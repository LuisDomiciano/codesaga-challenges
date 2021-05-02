class Arrays
  def self.converte_impares_por(lista, numero)
    [lista.filter { |item| item.odd? }, lista.filter { |item| item.odd?  }
        .map { |item| item * numero }]
  end

  def self.converte_pares_por(lista, numero)
    [lista.filter { |item| item.even? }, lista.filter { |item| item.even?  }
        .map { |item| item * numero }]
  end
end

