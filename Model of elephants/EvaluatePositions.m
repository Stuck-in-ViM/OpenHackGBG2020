function evaluation = EvaluatePositions(positions, currentGoalCoords)

evaluation = sqrt((positions(:,1)-currentGoalCoords(1)).^2+(positions(:,2)-currentGoalCoords(2)).^2);