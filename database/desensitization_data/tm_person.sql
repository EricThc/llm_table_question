 -- 创建数据库  
CREATE DATABASE mydatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
  
USE mydatabase;  

 -- 创建人员（RY）表
CREATE TABLE RY (
    RYBH INT PRIMARY KEY, --人员编号
    RYLX VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, --人员类型
    RYXM VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --姓名
    RYXB VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --性别
    JG VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, --籍贯
    NL INT,  --年龄
    ZW VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --职位
    LXFS VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci --联系方式
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 中文数据示例
INSERT INTO RY (RYBH, RYLX, RYXM, RYXB, JG, NL, ZW, LXFS)
VALUES  
(1, '行政', '张三', '男', '北京', 32, '经理', 'zhangsan@example.com'),  
(2, '技术', '李四', '女', '上海', 27, '软件工程师', 'lisi@example.com'),  
(3, '销售', '王五', '男', '广州', 38, '销售代表', 'wangwu@example.com'),  
(4, '市场', '赵六', '女', '深圳', 30, '市场协调员', 'zhaoliu@example.com');
