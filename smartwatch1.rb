=begin 

Desafío 3

Un  smartwatch muy inteligente cuenta la  cantidad de  pasos diarios que  da  una  persona, pero  en
algunos casos  genera  información erronea, se  pide crear un  método llamado clear_steps  que
reciba un arreglo y descarte todos los valores que no sean números o sean menores a 200 o mayor a
100000. Los  valores deben quedar como enteros  (Integers). El  método debe retornar el  arreglo
filtrado. El programa debe llamarse smartwatch1.rb

Uso:

ruby smartwatch1.rb

El programa no genera output

Probar el programa con el siguiente arreglo

pasos= ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

Tips:

    En la corrección el array entregado al método puede ser distinto al del ejemplo.
    La corrección del ejercicio funciona llamando al método promedio, por lo que el método tiene
    que existir y el valor ser el promedio de cualquier arreglo entregado.
    Puedes probar el programa llamando al método y mostrando el resultado pero no es necesario
    que el programa entregue resultado alguno, la revisión se hace llamando al método.

=end

def clear_steps(steps)
    a = steps.select do |step|
        largo_original = step.length
        largo_calculado = step.to_i.to_s.length
        largo_calculado == largo_original
    end

    b = a.select do |x|
        x.to_i > 200 && x.to_i < 100000
    end
    return b 
end

pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']
resultado = clear_steps(pasos)
print resultado