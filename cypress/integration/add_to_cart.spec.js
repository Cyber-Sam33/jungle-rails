describe('Add to cart', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  //do we need to login in with registered user first? test passes without authetication check in carts_controller.rb



  it("increseases cart by one when 'add-to-cart' is clicked ", () => {
    cy.contains('Login');
    cy.contains(' My Cart (0) ');
    // .should('be.visible');
    // cy.get('form').submit()
    //   .click();
    // cy.get('.products .fa-shopping-cart').first().click({ force: true });
    cy.contains('Add').first().click({ force: true });
    cy.contains(' My Cart (1) ');

    // check the counter has increased by one: product.quantity = product.quantity + 1

    // cy.get('.page-header h1').should(
    //   'be.visible'
    // );
  });
});;