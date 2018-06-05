#include <omp.h>
#include <iostream>
int main (int argc, char *argv[]) {
  int th_id, nthreads;
  #pragma omp parallel private(th_id)
  {
    th_id = omp_get_thread_num();
    std::cout << "Hello World from thread " << th_id << std::endl;
    #pragma omp barrier
    #pragma omp master
    {
      nthreads = omp_get_num_threads();
      std::cout << "There are " << nthreads << " threads" << std::endl;
    }
  }
  return 0;
}
