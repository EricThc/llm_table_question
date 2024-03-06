-- 创建logistics表
CREATE TABLE logistics_information (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,    -- 订单编号
    Supplier_ID INT NOT NULL,                    -- 供应商编号
    Customer_ID INT NOT NULL,                    -- 客户编号
    Order_Materials INT NOT NULL,                -- 订购物资编号
    Order_Date DATE NOT NULL,                    -- 订购日期
    Order_Quantity INT NOT NULL DEFAULT 0,       -- 订购数量
    Price DECIMAL(10, 2) NOT NULL,               -- 价格
    Shipping_Method VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL  -- 运输方式
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 中文数据示例
INSERT INTO logistics_information (Supplier_ID, Customer_ID, Order_Materials,Order_Date, Order_Quantity, Price, Shipping_Method)
VALUES
    (1001, 2001, 5, '2023-03-15', 50, 100.50, '陆运'),
    (1002, 2002, 35, '2023-03-16', 20, 200.00, '海运'),
    (1003, 2003, 28, '2023-03-17', 10, 500.00, '空运');