-- 创建internal_environment表
CREATE TABLE internal_environment (
    Environmental_ID INT PRIMARY KEY AUTO_INCREMENT,  -- 环境编号
    Date DATE NOT NULL,                                -- 日期
    Time TIME NOT NULL,                                -- 时间
    Temperature DECIMAL(5, 2) NOT NULL,               -- 温度（摄氏度）
    Humidity DECIMAL(5, 2) NOT NULL,                  -- 湿度（百分比）
    Light_Intensity INT NOT NULL,                     -- 光照（lux）
    Noise_Level DECIMAL(5, 2) NOT NULL                -- 噪音水平（分贝）
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 插入数据示例
INSERT INTO internal_environment (Date, Time, Temperature, Humidity, Light_Intensity, Noise_Level)
VALUES
    ('2023-05-10', '08:00:00', 22.50, 50.00, 300, 45.00),
    ('2023-05-10', '14:00:00', 25.00, 40.00, 500, 50.00),
    ('2023-05-11', '02:00:00', 20.00, 60.00, 200, 35.00);