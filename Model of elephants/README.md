The code is written using matlab. The file called "main" contains the main code where one can change the parameters and which executes the functions.
The parameter "noOfTimesteps" decides the number of datapoints collected. 
The parameter "noOfFrames" decides for how long the simulation shall be recorded.
"noOfElephants" sets the number of elephants in the herd.

The positions of the elephants will be saved in the format [x1, y1, x2, y2,...] where each row is one timestep. 
The name is decided on row 111 in writematrix(positionsExport,'ElephantPositions.csv'), in this case the name is "ElephantPositions".

The video is saved from row 116 and will be named "ElephantWalk" in this case. 
The framerate is currently set to 33 but can be changed to increase smoothness.
