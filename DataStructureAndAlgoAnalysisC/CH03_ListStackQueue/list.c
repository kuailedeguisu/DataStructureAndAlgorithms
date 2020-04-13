#include "list.h"
#include <stdio.h>
#include <stdlib.h>

struct Node
{
    ElemType Element;
    Position Next;
};


List
MakeEmpty(List L)
{

}

int
isEmpty(List L)
{
    // O(1)
    return L->Next == NULL;
}

int
IsLast(Position P, List L)
{
    // O(1)
    return P->Next == NULL;
}

Position
Find(ElemType X, List L)
{
    // O(N)
    Position P;
    P = L->Next; // L1
    while ( P != NULL && P->Element != X)
    {
        P = P->Next;
    }
    return P;
}

void
Delete(ElemType X, List L)
{
    // O(1)
    Position P, TmpCell;
    P = FindPrevious(X, L);
    if (!IsLast(P, L))
    {
        TmpCell = P->Next;
        P->Next = TmpCell->Next;
        free(TmpCell);
    }
}

Position
FindPrevious(ElemType X, List L)
{
    // O(N)
    Position P;
    P = L;
    while (P->Next != NULL && P->Next->Element != X)
    {
        P = P->Next;
    }
    return P;
}

void
Insert(ElemType X, List L, Position P)
{
    // O(1)
    // insert X after P
    Position NewCell;
    NewCell = (List)malloc(sizeof(struct Node));

    if (NewCell == NULL)
    {
        FatalError("Out of space!!!");
    }

    NewCell->Next = P->Next;
    NewCell->Element = X;
    P->Next = NewCell;
}

void
DeleteList(List L)
{
    // O(NlogN)
    Position P, Tmp;
    P = L->Next;
    L->Next = NULL;
    while (P != NULL)
    {
        Tmp = P->Next;
        free(P);
        P = Tmp;
    }

}

Position
Header(List L)
{

}

Position
First(List L)
{

}

Position
Advance(Position P)
{

}

ElemType
Retrieve(Position P)
{

}

void
PrintList(List L)
{
    while (L != NULL)
    {
        PrintElement(L->Element);
        L = L->Next;
    }
    #if 0
    // recursion implementation: tail recursion, when L is very large,
    // it will generate stack space overflow, so correct it by loop
    while (L != NULL)
    {
        PrintElement(L->Element);
        PrintList(L->Next);
    }
    #endif

}

void PrintElement(ElemType elem)
{
    printf("%d\n", elem);
}