package org.metricminer.tasks.metric.lines;

import org.metricminer.tasks.metric.common.Metric;
import org.metricminer.tasks.metric.common.MetricFactory;

public class LinesOfCodeMetricFactory implements MetricFactory {

    @Override
    public Metric build() {
        return new LinesOfCodeMetric();
    }

}