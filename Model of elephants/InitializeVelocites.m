function velocities = InitializeVelocites(noOfElephants, spawnAreaMinx, spawnAreaMaxx, spawnAreaMiny, spawnAreaMaxy, deltaT)

velocities = (rand(noOfElephants,2).*[spawnAreaMaxx-spawnAreaMinx,spawnAreaMaxy-spawnAreaMiny]-...
    [spawnAreaMaxx-spawnAreaMinx,spawnAreaMaxy-spawnAreaMiny]/2)/deltaT;