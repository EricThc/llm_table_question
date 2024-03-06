# llm_table_question
This warehouse contains the code for the experimental section and the database information used.
# 本地加载大语言模型
从huggingface上面下载ChatGLM3-6B-32K模型  https://huggingface.co/THUDM/chatglm3-6b-32k
下载到对应路径后可结合langchain使用glm_local_load.py加载本地模型并进行对话
# 数据库基本信息
包括数据库字段说明、类型以及相关数据信息等
# 大模型连接数据库进行表格问答
使用database_answering.py在大模型应用框架下实现语言模型和数据库的连接
# 字段缩写说明转化
通过script.py将数据库字段说明转化成所需字符串
