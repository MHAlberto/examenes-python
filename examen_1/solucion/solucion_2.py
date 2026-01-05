numero:list[int] = [1,2,3,4,5,6,7,8]


def suma_par(numero:list[int])->int:
    suma_total = 0
    for elemento in numero:
        if elemento % 2 == 0:
            suma_total += elemento
    if suma_total != 0:        
        return suma_total
    else:
        return 0
    
suma_pares = suma_par(numero)
print(suma_pares)
    