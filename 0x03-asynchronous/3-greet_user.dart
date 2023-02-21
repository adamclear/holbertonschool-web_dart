import 'dart:convert';
import 'dart:async';

FutureOr<String> greetUser() async {
	return fetchUserData().then((value) => '${json.decode(value)['username']}\n')
	.catchError((error) => "error caught: $error");
}

Future<String> loginUser() async {
	return checkCredentials().then((value) => value ? greetUser() : 'Wrong credentials');
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "3.14 Battery street"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);