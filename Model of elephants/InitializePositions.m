function positions = InitializePositions(noOfElephants, spawnAreaMinx, spawnAreaMaxx, spawnAreaMiny, spawnAreaMaxy)

positions = rand(noOfElephants,2).*[spawnAreaMaxx-spawnAreaMinx,spawnAreaMaxy-spawnAreaMiny]+[spawnAreaMinx, spawnAreaMiny];
