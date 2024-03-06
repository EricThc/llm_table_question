-- 创建物流（WL）表
CREATE TABLE WL (
    DDBH INT PRIMARY KEY AUTO_INCREMENT,    -- 订单编号
    GYSBH INT NOT NULL,                    -- 供应商编号
    KHBH INT NOT NULL,                    -- 客户编号
    DGWZBH INT NOT NULL,                -- 订购物资编号
    DGRQ DATE NOT NULL,                    -- 订购日期
    DGSL INT NOT NULL DEFAULT 0,       -- 订购数量
    DGJG DECIMAL(10, 2) NOT NULL,               -- 价格
    YSFS VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL  -- 运输方式
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 中文数据示例
INSERT INTO WL (GYSBH, KHBH, DGWZBH,DGRQ, DGSL, DGJG, YSFS)
VALUES
    (1001, 2001, 5, '2023-03-15', 50, 100.50, '陆运'),
    (1002, 2002, 35, '2023-03-16', 20, 200.00, '海运'),
    (1003, 2003, 28, '2023-03-17', 10, 500.00, '空运');