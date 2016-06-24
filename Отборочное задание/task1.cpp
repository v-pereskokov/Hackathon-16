/*
 Функция function возводит в положительную целую степень число(неважно какое: положительное или отрицательное, соблюдая все правила. Если число отрицательное в нечетной степени, знак “-“ сохраняется).
 */

// Исходный вариант:
int function (int b, int n) {
    int r = 0;
    if (n == 0){
        r = 1;
    } else if (n % 2 == 0) {
        r = function(b, n / 2) * function(b, n / 2);
    } else {
        r = function(b, n - 1) * b;
    }
    return r;
}

/*
    Нам не понравилось в исходной функции то, что использовалась лишняя проверка, вызывалась рекурсия(не однократно даже) и что нет реализации возведения в отрицательную степень. В простых алгоритмах быстрее работает обычный цикл в отличие от рекурсивного вызова функции.
 */

// Наше предложение :
float function(int x, int n)
{
    float p = 1;
    bool flag = true;
    if (n < 0)
    {
        n = -n;
        flag = false;
    }
    while (n > 0)
    {
        if (n & 1)
            p *= x;
        x *= x;
        n >>= 1;
    }
    return (flag) ? p : 1 / p;
}

int main ()
{
    int b, n;
    std::cin >> b >> n;
    std::cout << function(b, n) << std::endl;
    std::cout << std::endl;
    return 0;
}
