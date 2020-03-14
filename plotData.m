function plotData(X_train,y_train)

    subplot(2,2,1);
    plot(X_train(:,2),y_train,'.k',"markersize", 8);
    xlabel('Length-01');
    ylabel('Weight');


    subplot(2,2,2);
    plot(X_train(:,3),y_train,'.k',"markersize", 8);
    xlabel('Length-02');
    ylabel('Weight');


    figure;
    subplot(2,2,1);
    plot(X_train(:,4),y_train,'.k',"markersize", 8);
    xlabel('Length-03');
    ylabel('Weight');


    subplot(2,2,2);
    plot(X_train(:,5),y_train,'.k',"markersize", 8);
    xlabel('Height');
    ylabel('Weight');


    figure;
    subplot(2,2,1);
    plot(X_train(:,6),y_train,'.k',"markersize", 8);
    xlabel('Width');
    ylabel('Weight');

end;