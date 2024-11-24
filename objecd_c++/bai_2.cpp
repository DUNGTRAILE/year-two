#include <iostream>
#include <semaphore.h>
#include <thread>

#define BUFFER_SIZE 5

sem_t empty, full, mutex;
int buffer[BUFFER_SIZE];
int in = 0;
int out = 0;

void producer_function() {
    for (int i = 0; i < 10; ++i) {
        sem_wait(&empty); // Gi?m empty, ch? n?u buffer d?y
        sem_wait(&mutex); // L?y quy?n truy c?p vào buffer

        buffer[in] = i;
        in = (in + 1) % BUFFER_SIZE;

        std::cout << "Producer produced: " << i << std::endl;

        sem_post(&mutex); // Gi?i phóng quy?n truy c?p
        sem_post(&full); // Tang full
    }
}

void consumer_function() {
    for (int i = 0; i < 10; ++i) {
        sem_wait(&full); // Gi?m full, ch? n?u buffer tr?ng
        sem_wait(&mutex); // L?y quy?n truy c?p vào buffer

        int item = buffer[out];
        out = (out + 1) % BUFFER_SIZE;

        std::cout << "Consumer consumed: " << item << std::endl;

        sem_post(&mutex); // Gi?i phóng quy?n truy c?p
        sem_post(&empty); // Tang empty
    }
}

int main() {
    sem_init(&empty, 0, BUFFER_SIZE);
    sem_init(&full, 0, 0);
    sem_init(&mutex, 0, 1);

    std::thread producer(producer_function);
    std::thread consumer(consumer_function);

    producer.join();
    consumer.join();

    return 0;
}
