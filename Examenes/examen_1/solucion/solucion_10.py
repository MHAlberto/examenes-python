def formatiador_fecha(fecha:str)->str:
    palalabra_formateada = ""
    for dato in fecha:
        if dato == "/":
            palalabra_formateada += "-"
        else:
            palalabra_formateada += dato
    return palalabra_formateada

print(formatiador_fecha("15/05/2026")) 