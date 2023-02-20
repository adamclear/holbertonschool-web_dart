List<double> convertToF(List<double> temperaturesInC) {
	Iterable temperaturesInFMap = temperaturesInC.map((temp) => double.parse((((temp * 9) / 5) + 32).toStringAsFixed(2)));
	List<double> temperaturesInF = [];
	temperaturesInFMap.forEach((value) => temperaturesInF.add(value));
	return temperaturesInF;
}