#define BOOST_TEST_MODULE MyTest
#include <boost/test/unit_test.hpp>
#include <iostream>
#include <atomic>
#include <thread>

#include "header.h"

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
    variable = (i + 3) % 2;
  }  
}

BOOST_AUTO_TEST_SUITE(all)

BOOST_AUTO_TEST_CASE(test1, "test1")
{
  printHello();
}

BOOST_AUTO_TEST_CASE(test2, "test2")
{
  thread t1(thread1);
  thread t2(thread2);
  t1.join();
  t2.join();  
}

BOOST_AUTO_TEST_SUITE_END()
