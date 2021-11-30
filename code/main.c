#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

#pragma warning(disable : 4996)

const char PUNCTUATION_SYMBOLS[] = { ',', '.', ';', '-', ':', '_', '?', '!' };

#define MAX_CONTENT_SIZE 4096
#define MAX_ANSWER_SIZE 1024
#define MAX_COUNTRY_SIZE 512
#define MAX_AUTHOR_SIZE 512
#define MAX_ELEMENTS 20000

// Riddle
struct Riddle {
    char answer[MAX_ANSWER_SIZE];
};

// Saying
struct Saying {
    char country[MAX_COUNTRY_SIZE];
};

// Aphorism
struct Aphorism {
    char author[MAX_AUTHOR_SIZE];
};

// StorehouseOfWisdom
struct StorehouseOfWisdom {
    int k;

    char content[MAX_CONTENT_SIZE];

    struct Riddle riddle_;
    struct Aphorism aphorism_;
    struct Saying saying_;
};

// container
struct container {
    int max_len;
    int len;
    struct StorehouseOfWisdom* cont;
};

double Quotient(struct StorehouseOfWisdom* s) {
    int punctuaton_count = 0;
    for (int i = 0; i < strlen(s->content); i++) {
        for (int j = 0; j < (sizeof(PUNCTUATION_SYMBOLS) / sizeof(*PUNCTUATION_SYMBOLS)); j++) {
            if (s->content[i] == PUNCTUATION_SYMBOLS[j]) {
                punctuaton_count++;
                break;
            }
        }
    }

    return (double)punctuaton_count / strlen(s->content);
    return (double)punctuaton_count / strlen(s->content);
}

void OutStorehouse(struct StorehouseOfWisdom* s, FILE* file) {
    switch (s->k)
    {
    case 0:
        fprintf(file, "It is Riddle. Question: %s. Answer: %s. Quotient = %f\n", s->content, s->riddle_.answer, Quotient(s));
        break;
    case 1:
        fprintf(file, "It is Aphorism. %s - says %s. Quotient = %f\n", s->content, s->aphorism_.author, Quotient(s));
        break;
    case 2:
        fprintf(file, "It is Saying from %s: %s. Quotient = %f\n", s->saying_.country, s->content, Quotient(s));
        break;
    default:
        fprintf(file, "Incorrect Storehouse of Wisdom!");
        break;
    }
}

// random
int Random(int to) {
    return rand() % to;
}

void GenerateContent(int length, char* string) {
    for (int i = 0; i < length; i++) {
        string[i] = rand() % 93 + 32;
    }
    string[length] = '\0';
}

void Init(struct container * c, int size) {
    c->len = 0;
    c->max_len = size + 1;
    c->cont = (struct StorehouseOfWisdom*) malloc(size* sizeof(struct StorehouseOfWisdom));;
}

void Clear(struct container * c) {
    c->len = 0;
}

void InRiddle(struct Riddle* r, FILE* file) {
    char symb;
    int i = 0;
    while ((symb = fgetc(file)) != '\n' && symb != EOF) {
        r->answer[i++] = symb;
    }
    r->answer[i] = '\0';
}

void InRndRiddle(struct Riddle* r) {
    GenerateContent(Random(10), r->answer);
}

void InSaying(struct Saying* s, FILE* file) {
    char symb;
    int i = 0;
    while ((symb = fgetc(file)) != '\n' && symb != EOF) {
        s->country[i++] = symb;
    }
    s->country[i] = '\0';
}

void InRndSaying(struct Saying* s) {
    GenerateContent(Random(10), s->country);
}

void InAphorism(struct Aphorism* a, FILE* file) {
    char symb;
    int i = 0;
    while ((symb = fgetc(file)) != '\n' && symb != EOF) {
        a->author[i++] = symb;
    }
    a->author[i] = '\0';
}

void InRndAphorism(struct Aphorism* a) {
    GenerateContent(Random(15), a->author);
}

void InStorehouse(FILE* file, char k, struct StorehouseOfWisdom* s) {
    char symb = fgetc(file);
    int i = 0;
    while ((symb = fgetc(file)) != ' ') {
        s->content[i++] = symb;
    }
    s->content[i] = '\0';

    if (k == '0') {
        s->k = 0;
        InRiddle(&(s->riddle_), file);
    }
    else if (k == '1') {
        s->k = 1;
        InAphorism(&(s->aphorism_), file);
    }
    else {
        s->k = 2;
        InSaying(&(s->saying_), file);
    }
}

void InRndStorehouse(struct StorehouseOfWisdom* s) {
    int type_number = rand() % 3;
    GenerateContent(rand() % 50, s->content);

    if (type_number == 0) {
        s->k = 0;
        InRndRiddle(&(s->riddle_));
    }
    else if (type_number == 1) {
        s->k = 1;
        InRndAphorism(&(s->aphorism_));
    }
    else {
        s->k = 2;
        InRndSaying(&(s->saying_));
    }
}

void InContainer(struct container * c, FILE * file) {
    char k;
    while ((k = fgetc(file)) != EOF) {
        InStorehouse(file, k, &c->cont[c->len]);
        c->len++;
    }
}

void InRndContainer(struct container * c, int size) {
    while (c->len < size) {
        InRndStorehouse(&c->cont[c->len]);
        ++c->len;
    }
}

void OutContainer(struct container * c, FILE * file) {
    fprintf(file, "Container contains %d elements.\n", c->len);
    for (int i = 0; i < c->len; i++) {
        OutStorehouse(&(c->cont[i]), file);
    }
}

void ProcessingV22(struct container * c, FILE * file) {
    double sum = 0.0;
    for (int i = 0; i < c->len; i++) {
        sum += Quotient(&(c->cont[i]));
    }
    double mean = sum / c->len;
    fprintf(file, "Arithmetic mean: %f\n", mean);


    fprintf(file, "Quotients processed:\n");
    for (int i = 0; i < c->len; i++) {
        if (Quotient(&(c->cont[i])) <= mean) {
            OutStorehouse(&(c->cont[i]), file);
        }
    }

    for (int i = 0; i < c->len; i++) {
        if (Quotient(&(c->cont[i])) > mean) {
            OutStorehouse(&(c->cont[i]), file);
        }
    }
}

void PrintError() {
    printf("Incorrect command!\n"
        "Waited:\n"
        "-f infile outfile01 outfile02\n"
        "Or:\n"
        "-n number outfile01 outfile02\n");
}

void main(int argc, char* argv[]) {
    if (argc != 5) {
        PrintError();
        return;
    }

    printf("Start. Please, check, that all spaces in content of storehouse replaced with _.");
    struct container c;

    if (!strcmp(argv[1], "-f")) {
        FILE* file;
        file = fopen(argv[2], "r");
        char content[MAX_CONTENT_SIZE];
        fgets(content, MAX_CONTENT_SIZE, file);
        int size = atoi(content);
        Init(&c, size + 1);
        InContainer(&c, file);
        fclose(file);
    }
    else if (!strcmp(argv[1], "-n")) {
        srand(time(NULL));
        int size = atoi(argv[2]);

        Init(&c, size);
        if (size < 1 || size > MAX_ELEMENTS) {
            printf("Incorrect number of storehouse of wisdom = %d. Enter 0 < number <= 10000\n", size);
            return;
        }
        InRndContainer(&c, size);
    }
    else {
        PrintError();
        return;
    }

    FILE* file1;
    file1 = fopen(argv[3], "w");
    fprintf(file1, "Filled container:\n");
    OutContainer(&c, file1);

    FILE* file2;
    file2 = fopen(argv[4], "w");
    ProcessingV22(&c, file2);

    fclose(file1);
    fclose(file2);
    Clear(&c);
    printf("\nFinished");
    return;
}
