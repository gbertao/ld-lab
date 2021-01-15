extern const unsigned char code_start[], code_end[];

int main(void) {
    void (*f)(void);

    f = (void (*)(void))code_start;
    f();
    return 0;
}
