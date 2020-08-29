function triangle = GenerateTriangle(meanPosition, meanVelocity)

point0 = [0 0];
point1 = (15000*meanVelocity + 5000*[meanVelocity(2) -meanVelocity(1)])/norm(meanVelocity);
point2 = (15000*meanVelocity + 5000*[-meanVelocity(2) meanVelocity(1)])/norm(meanVelocity);

triangle = [point0; point1; point2; point0]+meanPosition;