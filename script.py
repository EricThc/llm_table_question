import json

# 假设字段缩写解释文件为json文件，且文件名为field_explanation.json,格式为"RYBH":"人员编号", "XM": "姓名",.....

json_file_path = './field_explanation.json'

# 读取json文件
with open(json_file_path, 'r', encoding='utf-8') as file:
    data = json.load(file)

# 初始化一个空字符串用于存储结果
result = ""

# 遍历JSON对象的每个部分
for section, fields in data.items():
    for key, value in fields.items():
        # 使用\n作为字段描述之间的分隔符，并添加到结果字符串中
        result += f"'{key}'代表{value}，\n"

    # 打印结果字符串
print(result, end='')