def normalizacion_texto(texto:str)->str:
    palabra_formateada = ""
    for i in range(0,len(texto)-1):
        if texto[i] != " " and texto[i+1] != " ":
            palabra_formateada += texto[i]
        else:
            continue
    return palabra_formateada
    
    
texto = "Python \n  es\t\tgenial\n2026"
print(normalizacion_texto(texto))


"Sesión 2 fue un exito en mejorar el segundo examén,
pero no tuve la oprtunidad de mejorar en el tema de 
su solución, me enfoque tanto en mejorarlo que si
lo hice dificil a tal punto que me cuesta demasiado resolverlo"