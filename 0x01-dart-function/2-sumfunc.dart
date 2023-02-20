int add(int a, int b) {
	int sum = a + b;
	return sum;
}

int sub(int a, int b) {
	int diff = a - b;
	return diff;
}

String showFunc(int a, int b) {
	String show = "Add $a + $b = " + add(a, b).toString() + "\n" + "Sub $a - $b = " + sub(a, b).toString();
	return show;
}