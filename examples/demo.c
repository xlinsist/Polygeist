#include <stdio.h>

int main() {
    int array[] = {1, 2, 3, 4, 5};  // 示例数组
    int length = sizeof(array) / sizeof(array[0]);
    int sum = 0;  // 临时变量用于存储规约结果

    // 进行规约操作
    for (int i = 0; i < length; i++) {
        sum += array[i];
    }

    printf("The sum of the array elements is: %d\n", sum);

    return 0;
}
