typedef struct Node *PtrToNode;

struct Node
{
    int Coefficent;
    int Exponent;
    PtrToNode Next;
};

typedef PtrToNode Polynomial;

void
ZeroPolynomial(Polynomial Poly);

void
AddPolynomial(const Polynomial Poly1,
    const Polynomial Poly2,
    Polynomial PolySum);

void
MultPolynomial(const Polynomial Poly1,
    const Polynomial Poly2,
    Polynomial PolyProd);