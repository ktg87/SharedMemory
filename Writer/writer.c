#include <stdio.h>
#include <stdlib.h>
#include <string.h>
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
    // int shmget(key_t key, size_t size, int shmflg)
    int shmid = shmget(key, SHM_SEG_SIZE, 0666|IPC_CREAT);
   
    if(shmid == -1)
    {
        printf("Unable to create the Shared Memory Segment: %s\n", strerror(errno));
        exit(0);
    }
   
    // shmat to attach to shared memory
    char *str = (char*) shmat(shmid,(void*)0,0);

    if(!str)
    {
        printf("Something went wrong with shmat(): %s", strerror(errno));
        exit(0);
    }
    
    printf("Enter Data to write into the Shared Memory Segment: ");
    
    scanf("%[^\n]s", str);
    
    printf("Data written in memory: %s\n",str);
   
    int status = 0;

    //detach from shared memory
    status = shmdt(str);

    if(status == -1)
    {
        printf("Something went wrong when trying to detach from the adress: %s", strerror(errno));
    }
    
    return 0;
}
