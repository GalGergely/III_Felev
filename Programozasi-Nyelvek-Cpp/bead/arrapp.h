#ifndef SL__H
#define SL__H

#include <vector>
#include <iostream>
template <class T>
class array_appender
{
private:
    std::vector<T *> memory;

public:
    array_appender(T array[], int a)
    {
        for (int i = 0; i < a; i++)
        {
            memory.push_back(&array[i]);
        }
    }
    void append(T array[], int a)
    {
        for (int i = 0; i < a; i++)
        {
            memory.push_back(&array[i]);
        }
    }
    void append(std::vector<T> &vector)
    {
        for (int i = 0; i < (int)vector.size(); i++)
        {
            memory.push_back(&vector[i]);
        }
    }
    int size() const
    {
        return memory.size();
    }
    T &at(int num)
    {
        return *memory[num];
    }
    const T &at(int num) const //this objektumon nem valtoztat
    {
        return *memory[num];
    }
    T &operator[](int num)
    {
        return *memory[num];
    }
    const T &operator[](int num) const
    {
        return *memory[num];
    }
    T &operator++(int num)
    {
        memory[num]++;
    }
};
#endif