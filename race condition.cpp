#include<bits/stdc++.h>
#include<pthread.h>
#include <errno.h>
#define ll long long int
#define endl '\n'
using namespace std;
int mails=0;
pthread_mutex_t mut;
void* routine(void* args)
{
    cout<<"in threads"<<endl;
    for(int i=0;i<1000000;i++)
    {
        //pthread_mutex_lock(&mut);
        //mails++;
        //pthread_mutex_unlock(&mut);
        while(1)
        {
            int status=pthread_mutex_trylock(&mut);
            if(!status)
            {
                mails++;
                pthread_mutex_unlock(&mut);
                break;
            }
            else if(status == EBUSY)
            {
                continue;
            }
        }
    }
    return NULL;

}
int main()
{

    pthread_t t1,t2,t3,t4;
    pthread_mutex_init(&mut,NULL);

    pthread_create(&t1,NULL,routine,NULL);
    pthread_create(&t2,NULL,routine,NULL);
    pthread_create(&t3,NULL,routine,NULL);
    pthread_create(&t4,NULL,routine,NULL);

    pthread_join(t1,NULL);
    pthread_join(t2,NULL);
    pthread_join(t3,NULL);
    pthread_join(t4,NULL);

    pthread_mutex_destroy(&mut);

    cout<<"number of mails: "<<mails<<endl;

    return 0;
}
