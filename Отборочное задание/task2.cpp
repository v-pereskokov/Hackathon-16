/*
 Алгоритм (Начинаем с элемента [n-1][0]):
1.	Сравниваем искомый элемент с элементом, индексы которого [0][0], и с элементом, индексы которого [n-1][m-1]. Если искомое значение больше первого и меньше второго, то завершаем выполнение функции и возвращаем сообщение о том, что такого элемента в матрице нет. Поскольку искомый элемент не входит в область поиска(он больше «верхней» границы и меньше «нижней»).
2.	Если элемент [строка][столбец] больше искомого, продвигаемся по матрице вправо на одну позицию.
3.	Если элемент [строка][столбец] меньше искомого, продвигаемся по матрице вверх на одну позицию.
4.	Если элемент [строка][столбец] равен искомому, завершаем выполнение функции и возвращаем индексы этого элемента.
5.	Во всех остальных случаях завершаем выполнение функции и возвращаем индексы {-1, -1}.

Мы провели анализ и доказали, что этот алгоритм быстрее бинарного поиска. Для начала пытались “отрезать” лишние части матрицы(зачем нам проверять числа 50, 40, если нам надо найти 13, к примеру). Можно подобрать матрицы и такие, что и бинарный поиск быстрее справится.
Временная сложность бинарного поиска O(n*log(m))(да, если матрицу “обрезать” походу, то займет меньше времени), но у нашего алгоритма сложность O(n+m).
Мы улучшили бинарный поиск тем, что пробегаемся по строкам, если столбцов больше и наоборот и также отсеиваем ненужные строки и столбцы. Тогда сложность по времени будет – O(min(n,m)*log(max(n*m)) – N), где N – число “отрезанных” элементов.
В результате пришли к тому, что наш алгоритм самый оптимальный по скорости.
 */

#include <iostream>
#include <utility>

std::pair<int, int> matrix_value(int **mat, int n, int m, int x)
{
    if ((x > mat[0][0]) || (x < mat[n-1][m-1]))
        return {-1, -1};
    int row = n - 1;
    int col = 0;
    while ((row >= 0) && (col <= n - 1))
        if (x > mat[row][col])
            row--;
        else if (x < mat[row][col])
            col++;
        else
            return {row, col};
    return {-1, -1};
}

// Примерный вариант использования:
int main()
{
    int n, m;
    std::cin >> n >> m;
    int **mat;
    mat = new int*[n];
    for (size_t i = 0; i < n; ++i)
        mat[i] = new int[m];
    for (size_t i = 0; i < n; i++)
    {
        for (size_t j = 0; j < m; j++)
        {
            std::cout << "Enter " << i << " " << j << "  ";
            std::cin>>mat[i][j];
        }
        std::cout << std::endl;
    }
    int x;
    std:: cin >> x;
    auto a = matrix_value(mat, n, m, x);
    std::cout << a.first << " " << a.second << std::endl;
    for (size_t i = 0; i < n; ++i)
        delete [] mat[i];
    delete [] mat;
    return 0;
}
