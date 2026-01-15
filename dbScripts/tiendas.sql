SELECT 
    s.StoreKey,
    s.StoreCode AS CodigoTienda,
    s.Description AS NombreTienda,
    s.SquareMeters AS MetrosCuadrados,
    s.Status AS EstadoTienda,
    st.StateName AS Estado,
    co.CountryName AS Pais
FROM [Data].Store s
LEFT JOIN [Data].State st ON s.StateKey = st.StateKey
LEFT JOIN [Data].Country co ON st.CountryCode = co.CountryCode;