#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <errno.h>

#define SHM_SEG_SIZE 1024

 int main() 
{
    extern int errno;

    // ftok to generate unique key
    key_t key = ftok("memory",67);

    // shmget returns an identifier in shmid
    int shmid = shmget(key, SHM_SEG_SIZE, 0666|IPC_CREAT);

    if(shmid == -1)
    {
        printf("Unable to Connect with the shared memory segment: %s\n", strerror(errno));
        exit(0);
    }
   
    // shmat to attach to shared memory
    char *str = (char*) shmat(shmid,(void*)0,0);

    if(!str)
    {
        printf("Unable to attach to shared memory segment: %s", strerror(errno));
        exit(0);
    }
    
    printf("Data read from memory: %s\n",str);
    
    int status = 0;

    //detach from shared memory
    status = shmdt(str);

    if (status == -1)
    {
        printf("Something went wrong with detaching from the shared memory segment: %s", strerror(errno));
        exit(0);
    }
   
    // destroy the shared memory
    status = shmctl(shmid,IPC_RMID,NULL);

    if (status == -1)
    {
        printf("Something went wrong with controling the shared memory segment: %s", strerror(errno));
    }

    
    return 0;
}
