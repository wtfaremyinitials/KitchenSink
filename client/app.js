Handlebars.registerHelper('signedIn', function() {
    return !!Meteor.userId();
});
