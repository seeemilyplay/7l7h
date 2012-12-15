#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int value;
    struct node *next;
} LinkedList;

LinkedList *create(int x) {
    LinkedList *list;
    list = malloc(sizeof(LinkedList));
    list->value = x;
    list->next = NULL;
    return list;
}

/* prepends the value to the start of the list,
 * e.g. if *list contains values {2,3,4}
 * and x is 1 then the result will be
 * {1,2,3,4}
 */
LinkedList *cons(int x, LinkedList *list) {
    /* TODO: your stuff goes here*/
}

/* appends the value to the end of the list,
 * e.g. if *list contains values {1,2,3}
 * and x is 4 then the result will be
 * {1,2,3,4}
 */
LinkedList *snoc(LinkedList *list, int x) {
    /* TODO: your stuff goes here*/
}

/* prints out the values in the list in whatever format you fancy */
void print(LinkedList *list) {
    /* TODO: your stuff goes here*/
}

/* runs through an example */
void main() {
    LinkedList *list = create(5);
    list = cons(1, cons(2, cons(3, cons(4, list))));
    list = snoc(snoc(snoc(snoc(list, 6), 7), 8), 9);
    print(list);
}
