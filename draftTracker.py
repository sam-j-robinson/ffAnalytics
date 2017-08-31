import pandas as pd
import os 


class RunningDraft():
    def __init__(self):
        self.wd             = os.getcwd()
        self.players_pd     = pd.read_csv('projectedPoints.csv', delimiter=',')

        self.draftBoard     = pd.read_csv('draftBoard.csv', delimiter=',')

        self.teams  = {}
        # with pd.option_context('display.max_rows', 12, 'display.max_columns', 25):
        #     print(self.players_pd)

    def generateTeams(self):
        owners = self.draftBoard.OWNER.unique()
        print(owners)



if __name__ == "__main__":
    draftTracker = RunningDraft()
    draftTracker.generateTeams()