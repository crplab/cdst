class Objective(object):
    def __init__(self, X, y):
        self.X = X
        self.y = y
        self.best_model = None
        self.best_result = None

    def __call__(self, trial):
        raise NotImplementedError
