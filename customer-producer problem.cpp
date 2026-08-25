#include<bits/stdc++.h>
#include<pthread.h>
#include <errno.h>
#define ll long long int
#define endl '\n'
using namespace std;
int mails=0;
pthread_mutex_t mtx;
pthread_cond_t cv;
int is_switch_on=0;
void* worker_routine(void* args)
{
    pthread_mutex_lock(&mtx);
    while(!is_switch_on)
    {
        pthread_cond_wait(&cv,&mtx);
    }
    mails++;
    cout<<"worker executed mails++. value is now: "<<mails<<endl;

    pthread_mutex_unlock(&mtx);
    return NULL;

}
void* flipper_routine(void* args)
{
    pthread_mutex_lock(&mtx);
    is_switch_on=1;

    cout<<"Switch flipped to ON! Ringing the door bell.......\n";
    pthread_cond_signal(&cv);

    pthread_mutex_unlock(&mtx);
    return NULL;

}
int main()
{

    pthread_t t1,t2;
    pthread_mutex_init(&mtx,NULL);
    pthread_cond_init(&cv,NULL);

    pthread_create(&t1,NULL,worker_routine,NULL);
    pthread_create(&t2,NULL,flipper_routine,NULL);
    pthread_join(t1,NULL);
    pthread_join(t2,NULL);


    pthread_mutex_destroy(&mtx);
    pthread_cond_destroy(&cv);

    cout<<"number of mails: "<<mails<<endl;

    return 0;
}
