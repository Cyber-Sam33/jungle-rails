describe('', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('is redirected to the correct product page after clicking product', () => {
    cy.contains('Login')
      .should('be.visible');
    cy.get('.products article a').first()
      .click();

    cy.get('.page-header h1').should(
      'be.visible'
    );
  });
});;