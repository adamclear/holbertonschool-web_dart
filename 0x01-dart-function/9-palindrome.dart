bool isPalindrome(String s) {
	if (s.length < 3) {
		return false;
	}
	for (int x = 0, y = s.length - 1; x != y; x++, y--) {
		if (s[x] == s[y]) {
			continue;
		}
		else {
			return false;
		}
	}
	return true;
}