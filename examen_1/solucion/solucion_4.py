texto = "Programacion en Python"
def conteo_vocal(texto:str)->dict:
    texto_formateado = texto.replace(" ","").lower()
    conteo = {"a": 0,"e": 0,"i":0,"o":0,"u":0}
    for letra in texto_formateado:
        if letra in conteo:
            for vocal in conteo:
                if vocal == letra:
                    conteo[vocal] += 1
    return conteo

print(conteo_vocal(texto))






    