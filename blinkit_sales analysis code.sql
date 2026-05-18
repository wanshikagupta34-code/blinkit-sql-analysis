CREATE DATABASE IF NOT EXISTS blinkit_db;
USE blinkit_db;
 
DROP TABLE IF EXISTS blinkit_sales;
 
CREATE TABLE blinkit_sales (
    Item_Identifier           VARCHAR(20),
    Item_Weight               DECIMAL(5,2),
    Item_Fat_Content          VARCHAR(20),
    Item_Visibility           DECIMAL(10,8),
    Item_Type                 VARCHAR(50),
    Item_MRP                  DECIMAL(8,2),
    Outlet_Identifier         VARCHAR(20),
    Outlet_Establishment_Year INT,
    Outlet_Size               VARCHAR(20),
    Outlet_Location_Type      VARCHAR(20),
    Outlet_Type               VARCHAR(50),
    Item_Outlet_Sales         DECIMAL(10,2)
);
 INSERT INTO blinkit_sales VALUES
-- Item_Id   Wt     Fat        Vis        Item_Type              MRP     Outlet_Id  Est_Yr  Size     Loc_Type  Outlet_Type          Sales
('FD0001',  9.30,  'Low Fat',  0.0160,   'Fruits and Vegetables', 249.81, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 3735.14),
('DR0012',  5.92,  'Regular',  0.0192,   'Soft Drinks',           48.27,  'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  443.42),
('FD0052',  17.50, 'Low Fat',  0.0000,   'Dairy',                141.62,  'OUT010', 1998, 'High',   'Tier 3', 'Supermarket Type1', 2097.27),
('FD0076',  19.20, 'Regular',  0.0000,   'Baking Goods',          182.09, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 1218.19),
('FD0076',  19.20, 'Regular',  0.0000,   'Baking Goods',          182.09, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',      549.29),
('NC0095',  NULL,  'Low Fat',  0.0000,   'Household',             53.86,  'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1',  834.06),
('FD0058',  11.80, 'Low Fat',  0.0604,   'Snack Foods',           57.60,  'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1',  763.34),
('FD0100',  16.34, 'Regular',  0.0534,   'Fruits and Vegetables', 196.61, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',      946.49),
('FD0116',  13.72, 'Low Fat',  0.0635,   'Snack Foods',           124.39, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 1076.58),
('FD0117',  16.20, 'Low Fat',  0.0408,   'Dairy',                 69.90,  'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  1165.93),
('FD0117',  16.20, 'Low Fat',  0.0408,   'Dairy',                 69.90,  'OUT046', 1997, 'Small',  'Tier 1', 'Supermarket Type1',   648.08),
('FD0149',  NULL,  'Low Fat',  0.0610,   'Frozen Foods',           95.72, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 1516.03),
('FD0166',  8.34,  'Low Fat',  0.1000,   'Fruits and Vegetables', 240.35, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',     1656.14),
('FD0177',  12.00, 'Regular',  0.0476,   'Snack Foods',           109.82, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 2017.08),
('FD0192',  16.50, 'Low Fat',  0.0600,   'Canned',                163.43, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3', 1547.31),
('NC0172',  NULL,  'Low Fat',  0.0000,   'Health and Hygiene',    75.49,  'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1',  870.00),
('FD0200',  9.00,  'Low Fat',  0.0530,   'Fruits and Vegetables', 214.55, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 2700.98),
('FD0205',  18.90, 'Regular',  0.0000,   'Frozen Foods',          131.02, 'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  980.11),
('FD0214',  NULL,  'LF',       0.0702,   'Snack Foods',            95.17, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 1302.56),
('FD0220',  12.40, 'reg',      0.0000,   'Hard Drinks',           109.48, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1',  787.84),
('FD0237',  12.10, 'Low Fat',  0.0680,   'Dairy',                 68.09,  'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1', 1090.73),
('FD0241',  19.90, 'Low Fat',  0.0750,   'Frozen Foods',          224.67, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 3222.45),
('DR0065',  5.10,  'Regular',  0.0310,   'Hard Drinks',            52.10, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',      423.11),
('FD0263',  15.10, 'Low Fat',  0.0000,   'Baking Goods',          113.90, 'OUT046', 1997, 'Small',  'Tier 1', 'Supermarket Type1', 1220.40),
('NC0290',  NULL,  'Low Fat',  0.0000,   'Others',                 54.00, 'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1',  655.73),
('FD0311',  10.50, 'Low Fat',  0.0900,   'Fruits and Vegetables', 145.38, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3', 2125.19),
('FD0318',  NULL,  'Regular',  0.0580,   'Snack Foods',           181.50, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 3142.67),
('FD0325',  12.80, 'Low Fat',  0.0760,   'Dairy',                  97.30, 'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  859.22),
('FD0332',  8.00,  'Low Fat',  0.0840,   'Fruits and Vegetables', 188.00, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 2987.56),
('FD0339',  13.40, 'Regular',  0.0000,   'Canned',                 72.44, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3',  889.73),
('FD0346',  16.80, 'Low Fat',  0.0620,   'Frozen Foods',          163.80, 'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1', 1440.55),
('NC0200',  NULL,  'Low Fat',  0.0000,   'Household',              88.90, 'OUT046', 1997, 'Small',  'Tier 1', 'Supermarket Type1',  920.67),
('FD0360',  14.20, 'low fat',  0.0000,   'Meat',                  131.75, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 1867.33),
('FD0375',  11.40, 'Regular',  0.0490,   'Snack Foods',           105.28, 'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  743.90),
('FD0382',  7.20,  'Low Fat',  0.0540,   'Dairy',                  60.77, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',       531.80),
('FD0399',  18.10, 'Low Fat',  0.0730,   'Fruits and Vegetables', 201.45, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3', 2556.78),
('FD0406',  9.80,  'reg',      0.0000,   'Baking Goods',          148.62, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 1738.44),
('DR0111',  5.50,  'Regular',  0.0210,   'Soft Drinks',            39.80, 'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1',  349.17),
('FD0420',  NULL,  'Low Fat',  0.0660,   'Canned',                121.40, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 1456.22),
('FD0427',  15.70, 'Low Fat',  0.0810,   'Frozen Foods',          177.90, 'OUT046', 1997, 'Small',  'Tier 1', 'Supermarket Type1', 2140.08),
('NC0310',  NULL,  'Low Fat',  0.0000,   'Health and Hygiene',     66.50, 'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2',  590.44),
('FD0441',  10.20, 'Low Fat',  0.0920,   'Fruits and Vegetables', 231.10, 'OUT035', 2004, 'Small',  'Tier 2', 'Supermarket Type1', 3011.95),
('FD0448',  12.60, 'Regular',  0.0380,   'Snack Foods',            84.20, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3',  677.34),
('FD0455',  17.90, 'Low Fat',  0.0690,   'Dairy',                 154.33, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 2341.67),
('FD0462',  13.10, 'LF',       0.0000,   'Meat',                  100.50, 'OUT017', 2007, NULL,     'Tier 1', 'Grocery Store',      788.23),
('FD0469',  8.80,  'Regular',  0.0560,   'Snack Foods',           168.75, 'OUT013', 1987, 'High',   'Tier 3', 'Supermarket Type1', 2789.14),
('FD0476',  11.00, 'Low Fat',  0.0740,   'Canned',                 88.65, 'OUT046', 1997, 'Small',  'Tier 1', 'Supermarket Type1',  994.60),
('DR0133',  6.80,  'Regular',  0.0160,   'Soft Drinks',            61.55, 'OUT027', 1985, 'Medium', 'Tier 3', 'Supermarket Type3',  478.89),
('FD0490',  19.50, 'Low Fat',  0.0850,   'Fruits and Vegetables', 259.99, 'OUT049', 1999, 'Medium', 'Tier 1', 'Supermarket Type1', 4120.31),
('FD0497',  14.60, 'Low Fat',  0.0430,   'Frozen Foods',          143.20, 'OUT018', 2009, 'Medium', 'Tier 3', 'Supermarket Type2', 1178.45);
UPDATE blinkit_sales
SET Item_Fat_Content = 'Low Fat'
WHERE Item_Fat_Content IN ('LF', 'low fat');
 
UPDATE blinkit_sales
SET Item_Fat_Content = 'Regular'
WHERE Item_Fat_Content IN ('reg');
SELECT Item_Fat_Content, COUNT(*) AS Count
FROM blinkit_sales
GROUP BY Item_Fat_Content;

SELECT
    COUNT(*)                        AS Total_Records,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)  AS Avg_Sales_Per_Item,
    ROUND(MIN(Item_Outlet_Sales),2)  AS Min_Sales,
    ROUND(MAX(Item_Outlet_Sales),2)  AS Max_Sales,
    ROUND(AVG(Item_MRP),2)           AS Avg_MRP
FROM blinkit_sales;

SELECT
    Item_Fat_Content,
    COUNT(*)                        AS Item_Count,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)  AS Avg_Sales,
    ROUND(AVG(Item_MRP),2)           AS Avg_MRP
FROM blinkit_sales
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

SELECT
    Item_Type,
    COUNT(*)                        AS Item_Count,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)  AS Avg_Sales,
    ROUND(AVG(Item_MRP),2)           AS Avg_MRP
FROM blinkit_sales
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

SELECT
    Item_Type,
    Item_Fat_Content,
    COUNT(*)                        AS Item_Count,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)  AS Avg_Sales
FROM blinkit_sales
GROUP BY Item_Type, Item_Fat_Content
ORDER BY Item_Type, Total_Sales DESC;

SELECT
    Outlet_Establishment_Year                  AS Est_Year,
    COUNT(DISTINCT Outlet_Identifier)           AS Outlet_Count,
    ROUND(SUM(Item_Outlet_Sales),2)             AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)             AS Avg_Sales
FROM blinkit_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

SELECT
    COALESCE(Outlet_Size, 'Unknown')            AS Outlet_Size,
    COUNT(DISTINCT Outlet_Identifier)            AS Outlet_Count,
    ROUND(SUM(Item_Outlet_Sales),2)              AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)              AS Avg_Sales
FROM blinkit_sales
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

SELECT
    Outlet_Type,
    COUNT(*)                        AS Total_Items_Sold,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)  AS Avg_Sales,
    ROUND(AVG(Item_Visibility),4)    AS Avg_Item_Visibility,
    ROUND(AVG(Item_MRP),2)           AS Avg_MRP
FROM blinkit_sales
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

SELECT
    Outlet_Location_Type,
    COUNT(DISTINCT Outlet_Identifier) AS Outlet_Count,
    ROUND(SUM(Item_Outlet_Sales),2)    AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)    AS Avg_Sales
FROM blinkit_sales
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

SELECT
    Outlet_Type,
    Outlet_Location_Type,
    COALESCE(Outlet_Size, 'Unknown')            AS Outlet_Size,
    COUNT(DISTINCT Outlet_Identifier)            AS Outlets,
    ROUND(SUM(Item_Outlet_Sales),2)              AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)              AS Avg_Sales,
    ROUND(AVG(Item_Visibility) * 100, 2)         AS Avg_Visibility_Pct
FROM blinkit_sales
GROUP BY Outlet_Type, Outlet_Location_Type, Outlet_Size
ORDER BY Total_Sales DESC;


CREATE OR REPLACE VIEW vw_outlet_summary AS
SELECT
    Outlet_Identifier,
    Outlet_Type,
    COALESCE(Outlet_Size, 'Unknown')  AS Outlet_Size,
    Outlet_Location_Type,
    Outlet_Establishment_Year,
    COUNT(*)                           AS Items_Sold,
    ROUND(SUM(Item_Outlet_Sales),2)    AS Total_Sales,
    ROUND(AVG(Item_Outlet_Sales),2)    AS Avg_Sales,
    ROUND(AVG(Item_Visibility),4)      AS Avg_Visibility,
    ROUND(AVG(Item_MRP),2)             AS Avg_MRP
FROM blinkit_sales
GROUP BY
    Outlet_Identifier, Outlet_Type, Outlet_Size,
    Outlet_Location_Type, Outlet_Establishment_Year;
 
-- Query the view
SELECT * FROM vw_outlet_summary ORDER BY Total_Sales DESC;

SELECT
    Outlet_Identifier,
    Outlet_Type,
    Outlet_Location_Type,
    Total_Sales,
    RANK() OVER (
        PARTITION BY Outlet_Location_Type
        ORDER BY Total_Sales DESC
    ) AS Rank_Within_Tier
FROM vw_outlet_summary
ORDER BY Outlet_Location_Type, Rank_Within_Tier;

WITH ItemSalesByOutlet AS (
    SELECT
        Outlet_Type,
        Item_Type,
        ROUND(SUM(Item_Outlet_Sales),2) AS Total_Sales,
        ROW_NUMBER() OVER (
            PARTITION BY Outlet_Type
            ORDER BY SUM(Item_Outlet_Sales) DESC
        ) AS rn
    FROM blinkit_sales
    GROUP BY Outlet_Type, Item_Type
)
SELECT
    Outlet_Type,
    Item_Type,
    Total_Sales
FROM ItemSalesByOutlet
WHERE rn <= 3
ORDER BY Outlet_Type, Total_Sales DESC;

WITH Grand AS (
    SELECT SUM(Item_Outlet_Sales) AS Grand_Total
    FROM blinkit_sales
)
SELECT
    b.Item_Type,
    ROUND(SUM(b.Item_Outlet_Sales),2)                    AS Total_Sales,
    ROUND(SUM(b.Item_Outlet_Sales) / g.Grand_Total * 100, 2) AS Pct_of_Total
FROM blinkit_sales b, Grand g
GROUP BY b.Item_Type, g.Grand_Total
ORDER BY Total_Sales DESC;

WITH YearAvg AS (
    SELECT
        Outlet_Establishment_Year,
        AVG(Item_Outlet_Sales) AS Year_Avg_Sales
    FROM blinkit_sales
    GROUP BY Outlet_Establishment_Year
)
SELECT
    b.Outlet_Identifier,
    b.Outlet_Type,
    b.Outlet_Establishment_Year,
    ROUND(AVG(b.Item_Outlet_Sales),2)    AS Outlet_Avg_Sales,
    ROUND(y.Year_Avg_Sales,2)            AS Vintage_Avg_Sales,
    ROUND(
        (AVG(b.Item_Outlet_Sales) - y.Year_Avg_Sales)
        / y.Year_Avg_Sales * 100, 1
    )                                    AS Pct_vs_Vintage_Avg
FROM blinkit_sales b
JOIN YearAvg y USING (Outlet_Establishment_Year)
GROUP BY
    b.Outlet_Identifier, b.Outlet_Type,
    b.Outlet_Establishment_Year, y.Year_Avg_Sales
ORDER BY Pct_vs_Vintage_Avg DESC;

SELECT
    Outlet_Type,
    Item_Fat_Content,
    COUNT(*)                        AS Item_Count,
    ROUND(SUM(Item_Outlet_Sales),2)  AS Total_Sales,
    ROUND(AVG(Item_MRP),2)           AS Avg_MRP
FROM blinkit_sales
GROUP BY Outlet_Type, Item_Fat_Content
ORDER BY Outlet_Type, Total_Sales DESC;