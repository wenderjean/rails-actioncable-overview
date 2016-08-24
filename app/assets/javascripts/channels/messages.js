App.messages = App.cable.subscriptions.create('MessagesChannel', {
	received: function(data) {
		$('#messages').removeClass('hidden');
		return $('#messages').append(this.renderMessage(data));
	},
	renderMessage: function(data) {
		return '<span class="badge">' + data.user + '</span>' + data.message + '<hr/>';
	}
});
