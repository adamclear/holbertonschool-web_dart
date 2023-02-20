import '9-palindrome.dart';

String longestPalindrome(String s) {
	String longest = "";
	String current = "";
	for (int x = 0; x < s.length; ++x){
		for (int y = x; y < s.length; ++y) {
			current = s.substring(x, y + 1);
			if ((current.length > longest.length) && isPalindrome(current)) {
				longest = current;
			}
		}
	}
	return longest == '' ? 'none' : longest;
}