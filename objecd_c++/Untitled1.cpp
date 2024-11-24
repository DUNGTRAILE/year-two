#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <chrono>

std::mutex mtx;                      // Mutex d? d?ng b? h�a
std::condition_variable cv;          // Bi?n di?u ki?n d? th�ng b�o gi?a c�c lu?ng
std::queue<int> buffer;              // H�ng d?i d�ng vai tr� l� b? d?m
const unsigned int BUFFER_SIZE = 10; // K�ch thu?c t?i da c?a b? d?m

// H�m Producer
void producer(int id) {
    int value = 0;
    while (true) {
        std::unique_lock<std::mutex> lock(mtx); // Kh�a mutex
        cv.wait(lock, [] { return buffer.size() < BUFFER_SIZE; }); // Ch? cho d?n khi b? d?m chua d?y

        buffer.push(value);
        std::cout << "Producer " << id << " produced: " << value << std::endl;
        value++;

        lock.unlock(); // M? kh�a mutex tru?c khi th�ng b�o
        cv.notify_all(); // Th�ng b�o cho c�c Consumer

        std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Gi? l?p th?i gian s?n xu?t
    }
}

// H�m Consumer
void consumer(int id) {
    while (true) {
        std::unique_lock<std::mutex> lock(mtx); // Kh�a mutex
        cv.wait(lock, [] { return !buffer.empty(); }); // Ch? cho d?n khi b? d?m kh�ng r?ng

        int value = buffer.front();
        buffer.pop();
        std::cout << "Consumer " << id << " consumed: " << value << std::endl;

        lock.unlock(); // M? kh�a mutex tru?c khi th�ng b�o
        cv.notify_all(); // Th�ng b�o cho c�c Producer

        std::this_thread::sleep_for(std::chrono::milliseconds(150)); // Gi? l?p th?i gian ti�u th?
    }
}

int main() {
    std::thread producer1(producer, 1);
    std::thread producer2(producer, 2);
    std::thread consumer1(consumer, 1);
    std::thread consumer2(consumer, 2);

    // �?m b?o c�c lu?ng ti?p t?c ch?y
    producer1.join();
    producer2.join();
    consumer1.join();
    consumer2.join();

    return 0;
}

