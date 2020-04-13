#ifndef __LIST_H
#define __LIST_H
typedef int ElemType;
struct Node;
typedef struct Node *PtrToNode;
typedef PtrToNode List;
typedef PtrToNode Position;

List MakeEmpty(List L);
int isEmpty(List L);
int IsLast(Position P, List L);
Position Find(ElemType X, List L);
void Delete(ElemType X, List L);
Position FindPrevious(ElemType X, List L);
void Insert(ElemType X, List L, Position P);
void DeleteList(List L);
Position Header(List L);
Position First(List L);
Position Advance(Position P);
ElemType Retrieve(Position P);
void PrintList(List L);
void PrintElement(ElemType elem);
#endif /*__LIST_H*/