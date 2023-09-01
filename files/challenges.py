import os

# 读取名为'FLAG'的环境变量
flag_value = os.environ.get('FLAG')

# 将环境变量的值保存到文件中
with open('/www/files/files.txt', 'w') as f:
    f.write(flag_value)