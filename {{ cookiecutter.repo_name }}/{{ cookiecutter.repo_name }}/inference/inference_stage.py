class InferenceStage(object):
    def __init__(self, input_list, params, transformers):
        self.input_list = input_list
        self.params = params
        self.transformers = transformers

    def save(self, filepath):
        raise NotImplementedError
