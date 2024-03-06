-- 创建material表  
CREATE TABLE material_management (
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,  -- 物资编号
    Name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,  -- 名称  
    Type VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,  -- 类型  
    Specifications TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  -- 规格  
    Stock_Quantity INT NOT NULL DEFAULT 0,  -- 库存数量  
    Storage_Location VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  -- 保管地点
    Quality_Inspection_Status ENUM('合格', '不合格', '待检') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL  -- 质检情况
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
  
-- 中文数据示例
INSERT INTO material (Name, Type, Specifications, Stock_Quantity, Storage_Location, Quality_Inspection_Status)  
VALUES  
    ('螺丝', '紧固件', '直径：5mm，长度：20mm', 1000, '仓库A区', '合格'),  
    ('螺母', '紧固件', 'M8 x 1.25', 500, '仓库B区', '待检'),  
    ('电线', '电气材料', '铜芯，2.5平方毫米', 2000, '仓库C区', '合格'),  
    ('轴承', '机械零件', '内径：10mm，外径：20mm', 800, '仓库D区', '不合格');