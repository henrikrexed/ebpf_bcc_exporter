#!/usr/bin/python
from prometheus_client import start_http_server, Gauge, Histogram, Summary,Counter
import promMetric




class PrometheusFormater:
    def __init__(self,port):
        self.port=port

    def defineMetric(self,name,typeMetric,description,labels=()):
        if self.port:
            switcher = {

                "Gauge": Gauge(name, description,labels),

                "Histogram": Histogram(name,description,labels),

                "Summary": Summary(name,description,labels),

                "Counter": Counter(name,description,labels),
            }
            self.promMetric[name] = promMetric.Prometheusmetric(name, typeMetric,switcher.get(typeMetric)(name,description,labels))
            start_http_server(self.port)

    def printexporter(self,metricname,label = () ):
        if self.port:
            metric = self.promMetric.get(metricname)

        def wrap(func):
            def wrapped_func(*args, **kwargs):
                 if metric:
                    label

                 return func(*args, **kwargs)

            return wrapped_func
        return wrap