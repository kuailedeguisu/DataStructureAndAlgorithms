#ifndef __LSTACK_H
#define __LSTACK_H
typedef int ElemType;
struct Node;
typedef struct Node *PtrToNode;
typedef PtrToNode Stack;

int isEmpty(Stack S);
Stack CreateStack(void);
void DisposeStack(Stack S);
void MakeEmpty(Stack S);
void Push(ElemType X, Stack S);
ElemType Top(Stack S);
void Pop(Stack S);
#endif /*__LSTACK_H*/