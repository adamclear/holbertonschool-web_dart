int whoWins(Map<String, int> team1, Map<String, int> team2) {
	int totalPoints(Map<String, int> shotsMade) {
		int points = 0;
		shotsMade.forEach((key, value) {
			switch(key) {
				case 'Free throws': {points += value;}
					break;
				case '2 pointers': {points += value * 2;}
					break;
				case '3 pointers': {points += value * 3;}
					break;
			}
		});
		return points;
	}
	int result = totalPoints(team1) - totalPoints(team2);
	if (result == 0)
		return 0;
	else if (result.isNegative)
		return 2;
	else
		return 1;
}