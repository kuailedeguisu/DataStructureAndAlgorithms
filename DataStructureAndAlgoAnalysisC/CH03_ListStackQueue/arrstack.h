#ifndef __ARR_STACK_H
#define __ARR_STACK_H
typedef int ElemType;
struct StackRecord;
typedef struct StackRecord *Stack;

int IsEmpty(Stack S);
int IsFull(Stack S);
Stack CreateStack(int MaxElements);
void DisposeStack(Stack S);
void MakeEmpty(Stack S);
void Push(ElemType X, Stack S);
void Pop(Stack S);
ElemType Top(Stack S);
ElemType TopAndPop(Stack S);

#endif /* __ARR_STACK_H */