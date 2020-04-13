#ifndef __ARR_QUEUE_H
#define __ARR_QUEUE_H
typedef int ElemType;
struct QueueRecord;
typedef struct QueueRecord *Queue;

int IsEmpty(Queue Q);
int IsFull(Queue Q);
Queue CreateQueue(int MaxElements);
void DisposeQueue(Queue Q);
void MakeEmpty(Queue Q);
ElemType Front(Queue Q);
void Enqueue(ElemType X, Queue Q);
void Dequeue(Queue Q);
ElemType FrontAndDequeue(Queue Q);
static int Succ(int Value, Queue Q);
#endif /*__ARR_QUEUE_H*/