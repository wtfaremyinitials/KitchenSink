Template.nav.events({
    'click #signout': function() {
        Meteor.logout();
        Router.go('/');
    }
});

Template.nav.helpers({
    'name': function() {
        return Meteor.user().profile.name;
    }
});
