SELECT 
    h.OrderKey,
    h.CustomerKey,
    h.StoreKey,
    d.ProductKey,
    h.OrderDate AS FechaOrden,
    h.DeliveryDate AS FechaEntrega,
    h.CurrencyCode AS CodigoMoneda,
    d.Quantity AS Cantidad,
    d.UnitPrice AS PrecioUnitario,
    d.NetPrice AS PrecioNeto,
    d.UnitCost AS CostoUnitario
FROM [Data].Sales_Header h
INNER JOIN [Data].Sales_Details d ON h.OrderKey = d.OrderKey;