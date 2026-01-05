lista = [1, 2, 2, 3, 4, 3, 5, 1, 6]
def eliminar_duplicado(lista:list)->list:
    return list(set(lista))

print(eliminar_duplicado(lista))
