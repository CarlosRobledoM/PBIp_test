SELECT 
    p.ProductKey,
    p.ProductCode AS CodigoProducto,
    p.ProductName AS NombreProducto,
    p.Manufacturer AS Fabricante,
    p.Brand AS Marca,
    p.Color,
    p.Weight AS PesoOriginal,
    p.WeightUnit AS UnidadPesoOriginal,
    CASE 
        WHEN p.WeightUnit = 'ounces' THEN p.Weight * 0.0283495
        ELSE p.Weight
    END AS PesoKilogramos,
    p.SubCategoryKey,
    p.CategoryKey,
    sc.SubCategoryName AS SubCategoria,
    c.CategoryName AS Categoria
FROM [Data].Product p
LEFT JOIN [Data].SubCategory sc ON p.SubCategoryKey = sc.SubCategoryKey
LEFT JOIN [Data].Category c ON p.CategoryKey = c.CategoryKey;