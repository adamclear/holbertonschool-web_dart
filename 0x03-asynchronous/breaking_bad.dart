import 'dart:convert';
import 'package:http/http.dart' as http;

// Currently seems like the api address they've given us for this task no
// longer works.

Future<void> printBbCharacters() async {
	try {
		dynamic bbChars = await http.get(Uri.parse(
			'https://breakingbadapi.com/api/characters'
		));
		for (dynamic character in jsonDecode(bbChars.body)) {
			print(character['name']);
		}
	} catch (error) {
		print('error caught: $error');
	}
}