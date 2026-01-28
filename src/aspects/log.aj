package aspects;
public aspect log {
pointcut logOperation()
: call ( void metier.CompteBancaire.retirer(double));
before() : logOperation() {
System.out.println("AVANT l'opération retrait");
}
after() : logOperation() {
System.out.println("APRES l'opération retrait" );
}
}