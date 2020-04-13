#include "arrqueue.h"
#include <stdio.h>

#define MinQueueSize (5)

struct QueueRecord
{
    int Capacity;
    int Front;
    int Rear;
    int Size;
    ElemType *Array;
};

int
IsEmpty(Queue Q)
{
    return Q->Size == 0;
}

int
IsFull(Queue Q)
{

}

Queue
CreateQueue(int MaxElements)
{

}

void
DisposeQueue(Queue Q)
{

}

void
MakeEmpty(Queue Q)
{
    Q->Size = 0;
    Q->Front = 1;
    Q->Rear = 0;
}

ElemType
Front(Queue Q)
{}

void
Enqueue(ElemType X, Queue Q)
{
    if (IsFull(Q))
    {
        Error("Full queue");
    }
    else
    {
        Q->Size++;
        Q->Rear = Succ(Q->Rear, Q);
        Q->Array[Q->Rear] = X;
    }
}

void
Dequeue(Queue Q)
{}

ElemType
FrontAndDequeue(Queue Q)
{}

static int
Succ(int Value, Queue Q)
{
    if (++Value == Q->Capacity)
    {
        Value = 0;
    }
    return Value;
}