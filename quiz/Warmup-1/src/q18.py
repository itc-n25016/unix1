# 2つの引数(整数)の少なくとも1つが10以上、20以下の範囲のときtrueを返す
# それ以外はfalseを返す関数
# 例：
# 　in1020(12, 99) → true
# 　n1020(21, 12) → true
# 　in1020(8, 99) → false
# 
# @param int a 整数
# @param int b 整数
# 
# @return 2つの引数(整数)の少なくとも1つが10以上、20以下の範囲のときtrueを返す
# 　　　　それ以外はfalseを返す関数
# 

def in1020(a, b):
    if 9 < a and 21 > a or 9 < b and 21 > b:
        return True
    else:
        return False
