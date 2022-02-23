SELECT 
    Total = (
        SELECT COUNT(OrderDate) 
        FROM SalesOrderHeader
    ), 
    TotalTime = (
        SELECT COUNT(OrderDate) 
        FROM SalesOrderHeader 
        WHERE OrderDate <> CAST(OrderDate as DATE)
    ),
    PercentOrders = (
        ( 
            SELECT COUNT(OrderDate) 
            FROM SalesOrderHeader 
            WHERE OrderDate <> CAST(OrderDate as DATE)
        ) * 1.0 / 
        (
            SELECT COUNT(OrderDate) 
            FROM SalesOrderHeader
        )
    )