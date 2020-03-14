function plotLine(X_train,y_train,theta)

    subplot(2,2,1);
    plot(X_train(:,2),y_train,'.k',"markersize", 8);
    hold on;
    plot(X_train(:,2), X_train(:,2)*theta(2), '-r','LineWidth', 2);
    xlabel('Length-01');
    ylabel('Weight');


    subplot(2,2,2);
    plot(X_train(:,3),y_train,'.k',"markersize", 8);
    hold on;
    plot(X_train(:,3),X_train(:,3)*theta(3),'-r','LineWidth', 2);
    xlabel('Length-02');
    ylabel('Weight');


    figure;
    subplot(2,2,1);
    plot(X_train(:,4),y_train,'.k',"markersize", 8);
    hold on;
    plot(X_train(:,4),X_train(:,4)*theta(4),'-r','LineWidth', 2);
    xlabel('Length-03');
    ylabel('Weight');


    subplot(2,2,2);
    plot(X_train(:,5),y_train,'.k',"markersize", 8);
    hold on;
    plot(X_train(:,5),X_train(:,5)*theta(5),'-r','LineWidth', 2);
    xlabel('Height');
    ylabel('Weight');


    figure;
    subplot(2,2,1);
    plot(X_train(:,6),y_train,'.k',"markersize", 8);
    hold on;
    plot(X_train(:,6),X_train(:,6)*theta(6),'-r','LineWidth', 2);
    xlabel('Width');
    ylabel('Weight');


end;