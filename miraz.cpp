#include<bits/stdc++.h>
#include<pthread.h>
#define ll long long int
using namespace std;
void* computation(void* add)
{
    int* add_num=(int *) add;
    int sum=0;
    for(int i=0;i<100000000;i++)sum+=*add_num;
    //cout<<sum<<endl;
    ll* thread_res=(ll*)malloc(sizeof(ll));
    *thread_res=sum;
    (void* ) thread_res;
    return thread_res;

}
int main()
{

    pthread_t thread1;
    pthread_t thread2;

    int val1=1;
    int val2=2;

    pthread_create(&thread1,NULL,computation,(void*)&val1);
    pthread_create(&thread2,NULL,computation,(void*)&val2);

    void* res1;
    void* res2;
    pthread_join(thread1,&res1);
    pthread_join(thread2,&res2);

    cout<<"thread 1 returned "<< *(ll *)res1<<endl;
    cout<<"thread 2 returned "<< *(ll *)res2<<endl;
    return 0;
}
