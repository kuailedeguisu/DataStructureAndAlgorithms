#include "arrstack.h"
#include <stdio.h>

#define EmptyTOS (-1)
#define MinStackSize (5)
struct StackRecord
{
    int Capacity;
    int TopOfStack;
    ElemType *Array;
};

int
IsEmpty(Stack S)
{
    return S->TopOfStack == EmptyTOS;
}

int
IsFull(Stack S)
{

}

Stack
CreateStack(int MaxElements)
{
    Stack S;

    if (MaxElements < MinStackSize)
    {
        Error("Stack size is too small");
    }

    S = malloc(sizeof(struct StackRecord));
    if (S == NULL)
    {
        FatalError("Out of space!");
    }

    S->Array = malloc(sizeof(ElemType) * MaxElements);
    if (S->Array == NULL)
    {
        FatalError("Out of space!");
    }
    S->Capacity = MaxElements;
    MakeEmpty(S);
    return S;
}


void
DisposeStack(Stack S)
{
    if (S != NULL)
    {
        free(S->Array);
        free(S);
    }
}

void
MakeEmpty(Stack S)
{
    S->TopOfStack = EmptyTOS;
}

void
Push(ElemType X, Stack S)
{
    if (IsFull(S))
    {
        Error("Full stack");
    }
    else
    {
        S->Array[++S->TopOfStack] = X;
    }
}

void
Pop(Stack S)
{
   if (IsEmpty(S))
   {
       Error("Empty stack");
   }
   else
   {
       S->TopOfStack--;
   }
}

ElemType
Top(Stack S)
{
    if (!IsEmpty(S))
    {
        return S->Array[S->TopOfStack];
    }
    Error("Empty stack");
    return 0;
}

ElemType
TopAndPop(Stack S)
{
    if (!IsEmpty(S))
    {
        return S->Array[S->TopOfStack--];
    }
    Error("Empty stack");
    return 0;
}