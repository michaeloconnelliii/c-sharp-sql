Select
    ProductID
From ProductListPriceHistory
Where EndDate is null
Group By ProductID
Having Count(*) > 1;
