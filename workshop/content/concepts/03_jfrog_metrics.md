
<br/>

Metrics are a measured value comprised of a set of attributes (e.g., name, value, label, and timestamp) and derived from system health and performance.

<br/>

**Personas**: system administrators

<br/>

#### 1. OpenMetrics

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
  
  It is delivered as pre-built dashboards within Splunk and Datadog, with integrations available as tiles within the corresponding marketplaces. More on this topic later in this workshop.

- [Get OpenMetrics for Artifactory](https://www.jfrog.com/confluence/display/JFROG/Artifactory+REST+API#ArtifactoryRESTAPI-GettheOpenMetricsforArtifactory)

  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X GET "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/v1/metrics"
  ```

- [Enable metrics](https://www.jfrog.com/confluence/display/JFROG/Dashboard?utm_source=platform&utm_content=wiki#Dashboard-EnablingTrends)

- [OpenMetrics format](https://prometheus.io/docs/instrumenting/exposition_formats/#text-based-format)

<br/> 


#### 2. REST API - Ping

  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X GET "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/system/ping"
  ```

  Provides a complete system health check.  

  Returns a HTTP 200 code with “OK” if Artifactory is 100%. 
  
  Otherwise returns a 5xx with stated reason. Doesn’t only check to see if socket is open, but checks to see if full Artifactory service including DB and filestore is functional. 


<br/> 


---

