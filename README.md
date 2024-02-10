# Демонстрационная программа на C
Данный проект призван продемонстрировать особенности и нюансы работы как с языком программирования `C` и его компиляторами &ndash; [`gcc`](https://gcc.gnu.org/), [`clang`](https://clang.llvm.org/) или [`msvc`](https://learn.microsoft.com/en-us/cpp/?view=msvc-170), так и со специальными утилитами (`tools`) &ndash; [`make`](https://www.gnu.org/software/make/), [`bash`](https://www.gnu.org/software/bash/), [`doxygen`](https://www.doxygen.nl/) etc.

## Планы
1. Дополнение примером работы с [`Dockerfile`](https://docs.docker.com/engine/reference/builder/) и [`docker-compose`](https://docs.docker.com/get-started/08_using_compose/).
2. Дополнение примером работы с [`GitHub Actions`](https://docs.github.com/ru/actions).
3. Альтернатива пункту **2** &ndash; такая же деятельность, но в рамках `standalone` [`GitLab`](https://about.gitlab.com/install/) или [`GitFlic`](https://gitflic.ru/help/standalone/install).

## Важные замечания
Автоматизация сборки служит существенным подспорьем в ускорении разработки и тестирования ПО. На первом этапе это может показаться избыточным, но после первых 50-100 перезапусков `gcc -o demo -I...` становится настолько тошно, что хочется ~застрелиться~ хоть как-то избавиться от этой рутины, автоматизировать.

Первым шагом может стать написание `shell`- (в случае с Unix) или `bat`-скрипта (в случае Windows). Решение не плохое, но сложно масштабируемое для кроссплатформенной разработки.

```sh
#!/bin/bash
gcc -Wall -Wextra -Wpedantic -std=c2x -I./include ./src/libdemo.c main.c -o demo
```

## Полезные ссылки
 1. `Doxygen` multi-lang
    В случае если необходимо писать документацию сразу на нескольких языках, можно оформить её специальным образом:
    ```c
    /**
     * \~english @brief Sample method
     * \~russian @brief Пример метода
     */
    void foo();
    ```
    см. https://stackoverflow.com/a/46685789/2761685
	
2. Пример оформления документации `Doxygen` для программы на языке `C` &ndash; https://fnch.users.sourceforge.net/doxygen_c.html
