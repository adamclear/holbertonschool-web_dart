class Password {
	String _password;
	Password({required String password}) : _password = password;
	String get password => _password;
	set password(String password) => _password = password;
	bool isValid(user_password) {
		return (
			user_password.length >= 8 &&
			user_password.length <= 16 &&
			user_password.contains(new RegExp(r'[A-Z]')) &&
			user_password.contains(new RegExp(r'[a-z]')) &&
			user_password.contains(new RegExp(r'[0-9]'))
		);
	}
	@override
	String toString() {
		return 'Your Password is: ${this.password}';
	}
}