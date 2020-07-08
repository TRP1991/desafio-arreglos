=begin 

Desafío 2

Crear el programa promedio2.rb con el método compara_arrays que reciba 2 arreglos y calcule
el promedio de ambos, devolviendo el mayor de los promedios.

Uso:

ruby promedio2.rb

Tips:

    Ocupar los métodos de array y string que estudiamos.
    Puedes ocupar el método para calcular el promedio del ejercicio anterior, pero debes agregarlo al
    archivo nuevo.
    Debes respetar el nombre del método
    Puedes probar el programa llamando al método y mostrando el resultado pero no es necesario
    que el programa entregue resultado alguno, la revisión se hace llamando al método.

=end

def compara_arrays(arreglo1, arreglo2)
    a = arreglo1.inject(0) do |sum , x|
        sum + x
    end
    a = a/ arreglo1.count
    b = arreglo2.inject(0) do |sum , x|
        sum + x
    end
    b = b / arreglo2.count
    if a > b
        return a
    else
        return b 
    end
end

arreglo1 = [730, 500, 400, 3800]
arreglo2 = [300, 600, 680, 230, 6000]
resultado = compara_arrays(arreglo1, arreglo2)

puts resultado