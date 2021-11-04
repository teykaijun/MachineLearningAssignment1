%classification_data = readtable('default of credit card clients.xls');
%Classification_X = table2array(classification_data(:,2:24));
%Classification_Y = table2array(classification_data(:,25));
%Classifier_Mdl = fitcsvm(Classification_X,Classification_Y,'KernelFunction','linear','BoxConstraint',1);
%CVSVMModel = crossval(Classifier_Mdl);
%% 
regression_data = readtable('Range-Queries-Aggregates.csv');
Regression_X = table2array(regression_data(:,2:7));
Regression_Y = table2array(regression_data(:,8));
%% Default is iqr(Regression_Y)/13.49 = 27.5696
Regression_Mdl = fitrsvm(Regression_X,Regression_Y,'Epsilon',32.5696);