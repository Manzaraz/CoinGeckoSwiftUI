#  Casos de Uso

## Mostrar una Lista de cryptomonedas globales

Como usuario, la idea es poder consultar las cryptomonedas globales ordenadas por capitalización de mercado (Market Cap).

    GIVEN: Tengo la App iniciada.
    WHEN: Accedo a la Vista Global
    THEN: Veo un listado de las Cryptos Globales
    AND: Información básica de cada crypto (nombre, symbol, precio, cambio de precio últimas 24hs, volumen últimas 24hs, capitalización de mercado)

- Entities
    Cryptocurrency
        id
        name
        symbol
        price
        price24h
        volume24h
        marketCap
        
- Use Cases
    Get Global Crypto List
        
