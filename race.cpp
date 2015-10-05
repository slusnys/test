#include <atomic>
#include <memory>
#include <functional>
#include <assert.h>
#include <thread>
#include <iostream>

using namespace std;

static const uint64_t LOOPS = 100000000;
uint32_t variable;

void thread1()
{
  for (uint32_t i = 0; i < LOOPS; i++)
  {
    variable = i % 2;
  }
}

void thread2()
{
  for (uint32_t i = 0; i < LOOPS; i++)
  {
    variable = (i + 1) % 2;
  }  
}

int main()
{
  thread t1(thread1);
  thread t2(thread2);
  t1.join();
  t2.join();
}
