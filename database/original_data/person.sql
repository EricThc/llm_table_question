 -- 创建数据库  
CREATE DATABASE mydatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
  
USE mydatabase;  

 -- 创建person表  
CREATE TABLE personnel_information (
    Personnel_ID INT PRIMARY KEY, --人员编号
    Personnel_Type VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, --人员类型
    Name VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --姓名
    Gender VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --性别
    Native_Place VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci, --籍贯
    Age INT,  --年龄
    Position VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,  --职位
    Contact_Information VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci --联系方式
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 中文数据示例
INSERT INTO personnel_information (Personnel_ID, Personnel_Type, Name, Gender, Native_Place, Age, Position, Contact_Information)
VALUES  
(1, '行政', '张三', '男', '北京', 32, '经理', 'zhangsan@example.com'),  
(2, '技术', '李四', '女', '上海', 27, '软件工程师', 'lisi@example.com'),  
(3, '销售', '王五', '男', '广州', 38, '销售代表', 'wangwu@example.com'),  
(4, '市场', '赵六', '女', '深圳', 30, '市场协调员', 'zhaoliu@example.com');
