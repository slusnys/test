#define BOOST_TEST_MODULE MyTest
#include <boost/test/unit_test.hpp>
#include <iostream>
//#include <boost/test/minimal.hpp>

#include "header.h"

BOOST_AUTO_TEST_SUITE(all)

BOOST_AUTO_TEST_CASE(test1, "test1")
{
  //  std::cout << "Test1" << std::endl;
  printHello();
  BOOST_CHECK(true);
}


/*
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
    variable = (i + 3) % 2;
  }  
}

int main()
{
  thread t1(thread1);
  thread t2(thread2);
  t1.join();
  t2.join();
}
*/

BOOST_AUTO_TEST_SUITE_END()
