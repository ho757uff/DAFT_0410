from sklearn.metrics import (
    accuracy_score, precision_score, recall_score, roc_curve, roc_auc_score
)

import pprint

from matplotlib import pyplot as plt


def scoring(train, pred):
        pprint.pprint(f'The accuracy score of the model is: {accuracy_score(train, pred)} ')
        pprint.pprint(f'The precision score of the model is: {precision_score(train, pred)} ')
        pprint.pprint(f'The recall score of the model is: {recall_score(train, pred)} ')
        pprint.pprint(f'The ROC AUC score of the model is: {roc_auc_score(train, pred)} ')

        fp, tp, _ = roc_curve(train, pred)
        plt.plot(fp, tp)
        plt.xlabel('False positives')
        plt.ylabel('True positives');

