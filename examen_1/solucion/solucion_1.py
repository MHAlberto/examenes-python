lista = [1,2,3,4,5]


def invertir_lista(lista:list)->list:
    lista_invertida = []
    for i in range(len(lista),0,-1):
        lista_invertida.append(lista[i-1])
    return lista_invertida
        
    
        
        
lista_invertida = invertir_lista(lista)
print(lista_invertida)

