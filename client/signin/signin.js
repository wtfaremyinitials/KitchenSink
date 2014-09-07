Template.signin.events({
    'click #signin-github': function() {
        event.target.innerHTML = event.target.innerHTML + ' <i class="fa fa-spinner fa-spin"></i>';
        
        window.setTimeout(function() {
            Meteor.loginWithGithub({}, loginSuccess);
        }, 50);
    },

    'click #signin-email': function(event, context) {
        event.target.innerHTML = event.target.innerHTML + ' <i class="fa fa-spinner fa-spin"></i>';

        var username = context.find('input[type="text"]').value;
        var password = context.find('input[type="password"]').value;
        Meteor.loginWithPassword(username, password, loginSuccess);
    }
});

Template.signin.helpers({});

var loginSuccess = function() {
    Router.go('/profile/me');
}
