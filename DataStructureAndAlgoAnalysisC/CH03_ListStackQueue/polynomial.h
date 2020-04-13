#define MAXDEGREE 100

typedef struct Polynomial
{
    int CoeffArray[MAXDEGREE + 1];
    int HighPower;
} *Polynomial;

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