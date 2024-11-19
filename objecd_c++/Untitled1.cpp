#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <chrono>

std::mutex mtx;                      // Mutex d? d?ng b? hóa
std::condition_variable cv;          // Bi?n di?u ki?n d? thông báo gi?a các lu?ng
std::queue<int> buffer;              // Hàng d?i dóng vai trò là b? d?m
const unsigned int BUFFER_SIZE = 10; // Kích thu?c t?i da c?a b? d?m

// Hàm Producer
void producer(int id) {
    int value = 0;
    while (true) {
        std::unique_lock<std::mutex> lock(mtx); // Khóa mutex
        cv.wait(lock, [] { return buffer.size() < BUFFER_SIZE; }); // Ch? cho d?n khi b? d?m chua d?y

        buffer.push(value);
        std::cout << "Producer " << id << " produced: " << value << std::endl;
        value++;

        lock.unlock(); // M? khóa mutex tru?c khi thông báo
        cv.notify_all(); // Thông báo cho các Consumer

        std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Gi? l?p th?i gian s?n xu?t
    }
}

// Hàm Consumer
void consumer(int id) {
    while (true) {
        std::unique_lock<std::mutex> lock(mtx); // Khóa mutex
        cv.wait(lock, [] { return !buffer.empty(); }); // Ch? cho d?n khi b? d?m không r?ng

        int value = buffer.front();
        buffer.pop();
        std::cout << "Consumer " << id << " consumed: " << value << std::endl;

        lock.unlock(); // M? khóa mutex tru?c khi thông báo
        cv.notify_all(); // Thông báo cho các Producer

        std::this_thread::sleep_for(std::chrono::milliseconds(150)); // Gi? l?p th?i gian tiêu th?
    }
}

int main() {
    std::thread producer1(producer, 1);
    std::thread producer2(producer, 2);
    std::thread consumer1(consumer, 1);
    std::thread consumer2(consumer, 2);

    // Ð?m b?o các lu?ng ti?p t?c ch?y
    producer1.join();
    producer2.join();
    consumer1.join();
    consumer2.join();

    return 0;
}

