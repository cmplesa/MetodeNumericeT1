function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;
    
    step_size = (max(probabilities) - min(probabilities)) / 1000;
    epsilons = min(probabilities):step_size:max(probabilities);

    for epsilon = epsilons
        % Creem un vector de predictii: 1 daca probabilitatea este sub epsilon, 0 altfel
        predictions = probabilities < epsilon; 

        tp = sum(predictions == 1 & truths == 1); % Calculam numarul de adevarati pozitivi (TP)
        fp = sum(predictions == 1 & truths == 0); % Calculam numarul de falsi pozitivi (FP)
        fn = sum(predictions == 0 & truths == 1); % Calculam numarul de falsi negativi (FN)

        precision = tp / (tp + fp);
        recall = tp / (tp + fn);

        F1 = 2 * (precision * recall) / (precision + recall); % Calculam scorul F1 folosind formula

        if F1 > best_F1
            best_epsilon = epsilon;
            best_F1 = F1;
            associated_precision = precision;
            associated_recall = recall;
        end
    end
end
