function newVelocities = UpdateVelocities(noOfElephants, velocities, positions,...
    bestParticlePositions, bestSwarmPosition, maxVelocity, deltaT)

c1=2.5;
c2=1.5;

newVelocitiesX = velocities(:,1) + c1/deltaT*rand(noOfElephants,1).*(bestParticlePositions(:,1)-positions(:,1))+...
    c2/deltaT*rand(noOfElephants,1).*(bestSwarmPosition(1)-positions(:,1));

newVelocitiesY = velocities(:,2) + c1/deltaT*rand(noOfElephants,1).*((bestParticlePositions(:,2)-positions(:,2))/deltaT)+...
    c2/deltaT*rand(noOfElephants,1).*(bestSwarmPosition(2)-positions(:,2));

newVelocities = [newVelocitiesX, newVelocitiesY];
newVelocities(newVelocities>maxVelocity)=maxVelocity;
newVelocities(newVelocities<-maxVelocity)=-maxVelocity;