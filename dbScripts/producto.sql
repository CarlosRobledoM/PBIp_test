SELECT 
    p.ProductKey,
    p.ProductCode AS CodigoProducto,
    p.ProductName AS NombreProducto,
    p.Manufacturer AS Fabricante,
    p.Brand AS Marca,
    p.Color,
    p.Weight AS Peso,
    sc.SubCategoryName AS SubCategoria,
    c.CategoryName AS Categoria
FROM [Data].Product p
LEFT JOIN [Data].SubCategory sc ON p.SubCategoryKey = sc.SubCategoryKey
LEFT JOIN [Data].Category c ON sc.CategoryKey = c.CategoryKey;