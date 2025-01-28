# 최댓값 찾기

# 1. 하나의 원소를 다른 원소들과 비교해서 최댓값인지 분석하는 방법
# - 각 숫자마다 모든 다른 숫자와 비교해서 최대값인지 확인. 만약 다른 모든 값보다 크다면 반복문을 중단
# 3, 5, 6, 1, 2, 4

# 3 -> 5, 6, 1, 2, 4
# 5 -> 6, 1, 2, 4
# 6 -> 1, 2, 4
# 1 -> 2, 4
# 2 -> 4

def find_max_num(array):
    for number in array:
        is_max_num = True
        for compare_number in array:
            if number < compare_number:
                is_max_num = False
        if is_max_num:
            return number


# 2. 하나의 변수를 잡아서 그 변수와 비교하며 가장 큰 수를 찾는 방법
# - 가장 큰 수를 저장할 변수를 만들고, 배열을 돌아가면서 그 변수와 비교. 만약 값이 더 크다면, 그 변수에 할당
# 3, 5, 6, 1, 2, 4
# max_num = 3

def find_max_num2(array):
    max_num = array[0]

    for number in array:
        if number > max_num:
            max_num = number
    return max_num

print("정답 = 6 / 현재 풀이 값 = ", find_max_num2([3, 5, 6, 1, 2, 4]))
print("정답 = 6 / 현재 풀이 값 = ", find_max_num2([6, 6, 6]))
print("정답 = 1888 / 현재 풀이 값 = ", find_max_num2([6, 9, 2, 7, 1888]))