clear
clc
% Using particle swarm optimization algorithm to generate flock movement data

noOfTimesteps = 10000;
noOfFrames = 1500;
noOfElephants = 16;
gridSize = 100000;          % square with length in meters
spawnAreaMinx = 10000;      % Generate initial positions area
spawnAreaMaxx = 10030;
spawnAreaMiny = 90000;
spawnAreaMaxy = 90030;

villageAreaMaxx = 30000;    % Define village boundary
villageAreaMaxy = 10000;
villageBorder = [0 villageAreaMaxy ; villageAreaMaxx villageAreaMaxy ; villageAreaMaxx 0];


maxVelocity = 500;
deltaT = 1;              % 15 minutes/1hour = 0.25 timesteps

positions = InitializePositions(noOfElephants, spawnAreaMinx, spawnAreaMaxx, spawnAreaMiny, spawnAreaMaxy);


velocities = InitializeVelocites(noOfElephants, spawnAreaMinx, spawnAreaMaxx, spawnAreaMiny, spawnAreaMaxy, deltaT);

currentGoalCoords = [5000,5000];
positionsMatrix = zeros(noOfElephants,2*noOfTimesteps);
velocitiesMatrix = zeros(noOfElephants,2*noOfTimesteps);
set(gcf,'Position',[500 300 700 600])
for j=1:noOfTimesteps
    positionsMatrix(:,(j-1)*2+1:j*2)=positions;
    velocitiesMatrix(:,(j-1)*2+1:j*2)=velocities;
    evaluation = EvaluatePositions(positions, currentGoalCoords);
    bestParticleScores = evaluation;
    bestParticlePositions = positions;
    [bestScore,bestIndex] = max(evaluation);
    bestSwarmPosition = positions(bestIndex,:);
    bestParticleScore = evaluation(bestIndex,:);
    
    
    if sum(evaluation)<20000
        currentGoalCoords = rand(1,2)*100000;
    end
    if j<noOfFrames
        frames(j)=getframe(gcf);
    
    
    
        plot(positions(:,1),positions(:,2),'ks','markerfacecolor',[0.5,0.5,0.5])

        axis([0,gridSize,0,gridSize])
        hold on
        plot(villageBorder(:,1),villageBorder(:,2),'k')
        if j>21
            triangle = GenerateTriangle(meanPosition, meanVelocity);
            fill(triangle(:,1),triangle(:,2),'r');
        end
        
        if currentGoalCoords(1) < villageAreaMaxx && currentGoalCoords(2) < villageAreaMaxy 
            plot(currentGoalCoords(:,1),currentGoalCoords(:,2),'ks','markerfacecolor',[0.8,0.4,0.15])
            legend('Elephants','Village border','Predicted risk zone','Village plantage')
        else
            plot(currentGoalCoords(:,1),currentGoalCoords(:,2),'ks','markerfacecolor',[0.1,0.8,0.1])
            legend('Elephants','Village border','Predicted risk zone','Other food source')
        end
        if j>21
            title(sprintf('Herd velocity east=%0.3g, Herd velocity north=%0.3g',meanVelocity(1)/100,meanVelocity(2)/100))
        end
            xlabel('x-Coordinate')
        ylabel('y-Coordinate')
        hold off
        drawnow
    end
    
    for i=1:noOfElephants
        if evaluation(i)<bestParticleScores(i)
            bestParticleScore(i)=evaluation(i);
            bestParticlePositions(i,:)=positions(i,:);
        end

        if evaluation(i)<bestParticleScore
            bestParticleScore=evaluation(i);
            bestSwarmPosition=positions(i,:);
        end
        velocities = UpdateVelocities(noOfElephants, velocities, positions, bestParticlePositions, bestSwarmPosition, maxVelocity, deltaT);
        positions = UpdatePositions(positions, velocities);
    end
    
    if j>20
        meanVelocityX=mean(positionsMatrix(:,j*2-1)-positionsMatrix(:,j*2-41))/10;
        meanVelocityY=mean(positionsMatrix(:,j*2)-positionsMatrix(:,j*2-40))/10;
        meanVelocity=[meanVelocityX meanVelocityY];
        
        meanPositionX=mean(positionsMatrix(:,j*2-1));
        meanPositionY=mean(positionsMatrix(:,j*2));
        meanPosition=[meanPositionX meanPositionY];
    end
    
    
end


%%      Save positions
positionsExport=zeros(noOfTimesteps,noOfElephants*2);
for i=1:noOfElephants
    positionsExport(:,(i-1)*2+1) = positionsMatrix(i,1:2:noOfTimesteps*2);
    positionsExport(:,2*i) = positionsMatrix(i,2:2:noOfTimesteps*2);
end

writematrix(positionsExport,'ElephantPositions.csv') 



%%      Save movie
writerObj = VideoWriter('ElephantWalk.avi');
writerObj.FrameRate = 33;
open(writerObj);

for i=1:noOfFrames-1
    frame = frames(i) ;
    writeVideo(writerObj, frame);
end
close(writerObj);



