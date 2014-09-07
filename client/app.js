Handlebars.registerHelper('signedIn', function() {
    return !!Meteor.userId();
});

Router.map(function() {
    this.route('home',      { path: '/' });
    this.route('signin',    { path: '/signin' });
});
