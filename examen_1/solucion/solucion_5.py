def es_primo(n:int)->bool:
    for i in range(2,int(n**(1/2))+1):    
        if n % i == 0:
            return False
    return True
     
def lista_primo(n:int)->list[int]:
    lista = []
    for i in range(2,n):
        if es_primo(i):
            lista.append(i)
    return lista

n = 20
print(lista_primo(n))
