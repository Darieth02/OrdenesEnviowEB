import requests

# Dirección que deseas geocodificar en Tepic, Nayarit
address = "Calle Juárez 123, Tepic, Nayarit, México"

# URL de la API de Nominatim
url = f"https://nominatim.openstreetmap.org/search?q={address}&format=json&countrycodes=MX&state=Nayarit&city=Tepic"

# Agrega tu clave de API a los encabezados de la solicitud
headers = {
    "User-Agent": "Rafaut",
    "Accept-Language": "en-US,en;q=0.5",
}

# Realiza la solicitud GET a la API de Nominatim
response = requests.get(url, headers=headers)

# Obtiene los resultados en formato JSON
results = response.json()

# Imprime los resultados de geocodificación en Tepic, Nayarit
for result in results:
    print("Dirección: ", result["display_name"])
    print("Latitud: ", result["lat"])
    print("Longitud: ", result["lon"])
    print("---------------")
