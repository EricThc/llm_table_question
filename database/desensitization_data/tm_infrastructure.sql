-- 创建基础设施（JCSS）表
CREATE TABLE JCSS (
    SSBH INT PRIMARY KEY AUTO_INCREMENT,      -- 设施编号
    SSMC VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,  -- 设施名称
    SSLX VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,  -- 设施类型
    SSQY VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,  -- 设施区域
    ZYGN TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,                  -- 主要功能
    GLRY VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,                -- 管理人员
    WHJL TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci            -- 维护记录
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 中文数据示例
INSERT INTO JCSS (SSMC, SSLX, SSQY, ZYGN, GLRY, WHJL)
VALUES
    ('仓库A', '存储设施','仓库区域B','存储物资，提供物资出入库服务', '张三', '2023-04-01: 检查设备运行情况，无异常\n2023-04-15: 清洁设备表面，确保卫生'),
    ('叉车1号', '运输设备','仓库区域D','物资搬运','李四', '2023-04-05: 更换轮胎\n2023-04-20: 常规维护检查，设备运行正常'),
    ('货架系统', '存储设备','仓库区域C','物资存储，便于取用', '王五', '2023-04-10: 调整货架布局\n2023-04-25: 检查货架稳固性，无异常');