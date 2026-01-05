texto = "Anita lava la tina"

def es_palindromo(texto:str)->bool:
    texto_formateado = texto.replace(" ","").lower()
    return texto_formateado[::-1] == texto_formateado


print(es_palindromo(texto)) 