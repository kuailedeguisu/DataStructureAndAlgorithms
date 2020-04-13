#include "lstack.h"
#include <stdio.h>

struct Node
{
    ElemType Element;
    PtrToNode Next;
};
#if 0
Stack S: S is header Node, and S->Next is the first Node, 
#endif
int isEmpty(Stack S)
{
    return S->Next == NULL;
}

Stack CreateStack(void)
{
    Stack S;
    S = malloc(sizeof(struct Node));
    if ( S == NULL)
    {
        FatalError("Out of space!!!");
    }
    S->Next = NULL;
    MakeEmpty(S);
    return S;
}

void DisposeStack(Stack S);


void MakeEmpty(Stack S)
{
    if (S == NULL)
    {
        Error("Must use CreateStack first");
    }
    else
    {
        while (!isEmpty(S))
        {
            Pop(S);
        }
    }
    
}

void Push(ElemType X, Stack S)
{
    PtrToNode TmpCell;
    TmpCell = malloc(sizeof(struct Node));
    if (TmpCell == NULL)
    {
        FatorError("Out of space!!!");
    }
    else
    {
        TmpCell->Element = X;
        TmpCell->Next = S->Next;
        S->Next = TmpCell;
    }
    
}

ElemType Top(Stack S)
{
    if (!isEmpty(S))
    {
        return S->Next->Element;
    }
    Error("Empty stack");
    return 0;
}

void Pop(Stack S)
{
    PtrToNode FirstCell;
    if (isEmpty(S))
    {
        Error("Empty stack");
    }
    else
    {
        FirstCell = S->Next;
        S->Next = S->Next->Next;
        free(FirstCell);
    }
}