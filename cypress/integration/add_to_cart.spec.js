describe('Add to cart', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  //Need to login in with registered user first? test passes without authetication check in carts_controller.rb

  it("increseases cart by one when 'add-to-cart' is clicked ", () => {
    cy.contains('Login');
    cy.contains(' My Cart (0) ');
    cy.contains('Add').first().click({ force: true });
    cy.contains(' My Cart (1) ');
  });
});;