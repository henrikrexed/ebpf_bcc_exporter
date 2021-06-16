import string


class Prometheusmetric:
    def __init__(self, name, typeMetric, prometheusMetricType):
        self.name = name
        self.type= typeMetric
        self.prometheusMetricType = prometheusMetricType

    def getname(self):
        return self.name

    def getprometheusMetricType(self):
        return self.prometheusMetricType


    def getType(self):
        return self.type