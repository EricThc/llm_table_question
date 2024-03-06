-- 创建内部环境（NBHJ）表
CREATE TABLE NBHJ (
    HJBH INT PRIMARY KEY AUTO_INCREMENT,  -- 环境编号
    RQ DATE NOT NULL,                                -- 日期
    SJ TIME NOT NULL,                                -- 时间
    WD DECIMAL(5, 2) NOT NULL,               -- 温度（摄氏度）
    SD DECIMAL(5, 2) NOT NULL,                  -- 湿度（百分比）
    GZ INT NOT NULL,                     -- 光照（lux）
    ZYSP DECIMAL(5, 2) NOT NULL                -- 噪音水平（分贝）
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 插入数据示例
INSERT INTO NBHJ (RQ, SJ, WD, SD, GZ, ZYSP)
VALUES
    ('2023-05-10', '08:00:00', 22.50, 50.00, 300, 45.00),
    ('2023-05-10', '14:00:00', 25.00, 40.00, 500, 50.00),
    ('2023-05-11', '02:00:00', 20.00, 60.00, 200, 35.00);