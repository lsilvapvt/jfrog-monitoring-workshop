
<br/>

Metrics are a measured value comprised of a set of attributes (e.g., name, value, label, and timestamp) and derived from system health and performance.

<br/>

**Personas**: system administrators

<br/>

#### OpenMetrics

- [Documentation](https://www.jfrog.com/confluence/display/JFROG/Open+Metrics)  
  
  Open Metrics is supported by Artifactory 7.7+. Provides system telemetry and operational metrics on the Artifactory and Xray.

  Samples of Metrics  
  - System Consumption for Artifactory and Xray - CPU, Memory, Disk  
  - JVM Memory Statistics
  - DB Connections 
  - HTTP Connection
  - Garbage Collection 
  - Scanned Artifact by Package Type
  - Scanned Components
  
  How is it delivered
  - Pre-built dashboards within Splunk and Datadog  
  - Integrations available as tiles within Splunkbase and Datadog integrations marketplaces


- [Enable metrics](https://www.jfrog.com/confluence/display/JFROG/Dashboard?utm_source=platform&utm_content=wiki#Dashboard-EnablingTrends)

- [REST API - Get OpenMetrics for Artifactory](https://www.jfrog.com/confluence/display/JFROG/Artifactory+REST+API#ArtifactoryRESTAPI-GettheOpenMetricsforArtifactory)

- [OpenMetrics format link](https://prometheus.io/docs/instrumenting/exposition_formats/#text-based-format)

<br/> 

Get OpenMetrics from Artifactory
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X GET "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/v1/metrics"
  ```


REST API - Ping
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X GET "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/system/ping"
  ```
  Provides a complete system health check.  
  Returns a HTTP 200 code with “OK” if Artifactory is 100%. Otherwise returns a 5xx with stated reason. Doesn’t only check to see if socket is open, but checks to see if full Artifactory service including DB and filestore is functional. 


<br/> 


#### JFrog Insights 

Tool for quick indicatives about the overall system status

<br/> 

#### FluentD 

- [FluentD for DataDog - Documentation](https://www.jfrog.com/confluence/display/JFROG/Datadog#Datadog-SettingUpFluentdforDatadog)

- [Log Analytics DataDog - GitHub](https://github.com/jfrog/log-analytics-datadog)

- [JFrog Platform Performance with Datadog Analytics - Blog](https://jfrog.com/blog/track-jfrog-platform-performance-with-datadog-analytics/)


<br/>


---

