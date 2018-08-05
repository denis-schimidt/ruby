class Thingie
  def prod(index)
    list = [ "erp!", "blop!", "ping!", "ribbit!" ]
    raise ArgumentError.new ("O indice deve ser menor ou igual a #{list.size}") unless index < list.size

    list[index]
  end

  def banana
    puts "Banana"
  end
end