# FBFF-Neuroscience
Model for identifying feedback and feedforward timeseries using neuroscientifical data from primates
  
- For inclusion of new subjects or changes to the data location, read the beginning of MainScript.m  
  
- Run_All.m  
	Script for running the method for several regions/subjects.  
	This file is responsible for calling the main script with each region/subject.  
  
- MainScript.m  
	Main file for running a specific region/subject.  
	This script is divided into 3 different parts:  
		Initialization:  
			Calls InitialVariables.m, which in turn calls InitialParameters.m to define all the general variables needed for the method  
			Calls ProcessIntro.m which in turn calls InitialContrast.m, InitialSpikeTrain.m, Initial***.m to initialize the arrays and variables to deal with each part of the analysis  
		Process the data:  
			Calls ProcessData.m which will cycle through every available file to validate individual trials and fill the respective arrays created in the last part (Initialization) with the respective information of contrast/Spiketrain/Microsaccade/etc.  
		Plot the data:  
			Having filled the arrays with the relevant information, calls ProcessPlots.m which in turn will call PlotContrast.m/PlotSpikeTrain.m/PlotFBFF.m/Plot***.m to plot all the   information extracted from the data files.  
