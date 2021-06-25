
<br/>

[Documentation](https://www.jfrog.com/confluence/display/JFROG/Log+Analytics)

Transform Logs and Metrics into insights!

Single collection for Operations teams with analytics and visualization tool they already use.

Alerting and notification features, management by exception!

<br/>

##### Integrations

- [Splunk](https://www.jfrog.com/confluence/display/JFROG/Splunk)
- [Sumo Logic](https://www.jfrog.com/confluence/display/JFROG/Sumo+Logic) 
- [Elastic Search with Kibana](https://www.jfrog.com/confluence/display/JFROG/Elasticsearch+with+Kibana)
- [Prometheus + Grafana](https://www.jfrog.com/confluence/display/JFROG/Prometheus+with+Grafana)
- [DataDog](https://www.jfrog.com/confluence/display/JFROG/Datadog)

<img src="https://www.jfrog.com/confluence/download/attachments/114760467/Screen%20Shot%202020-09-02%20at%2011.59.49%20AM.png?version=1&modificationDate=1600162693000&api=v2" alt="DataDog Integration" style="background-color:transparent;border:none;" />


<br/> 

##### FluentD - Unified Logging Layer

<br/>

[FluentD](https://www.fluentd.org/architecture) covers log input and field extraction for all products in the JFrog Platform and structures them as JSON. 

As part of the downstream data processing, the JSON output is forwarded leveraging the plugins to the desired log vendors listed above.

- [FluentD for DataDog - Documentation](https://www.jfrog.com/confluence/display/JFROG/Datadog#Datadog-SettingUpFluentdforDatadog)

- [JFrog Log Analytics with DataDog - GitHub](https://github.com/jfrog/log-analytics-datadog)

<br/>

##### References

- [JFrog Platform Performance with Datadog Analytics - Blog](https://jfrog.com/blog/track-jfrog-platform-performance-with-datadog-analytics/)

<br/>

- Over 25 different logs for the system, potential insights  
  - Most active repositories
  - Top referred files
  - Requests by status codes
  - Denied actions and logins attempts by IP and username
  - Top 10 IPs for upload/download
  - Service errors
  - HTTP response codes
  - Accessed images
  - Data transfers in GB for uploads/downloads
  - Audit actions by username
  - Denied actions and logins by IP and username
  - Accepted deploys by username

<br/>

- Samples of metrics supported in the dashboards  
  - Data Transfers (GBs) Over Time
  - Errors Over Time 
  - Requests by Status Code (Every 10 Minutes)
  - Requests by Repo
  - Most Downloaded Artifacts
  - 5xx Status Codes
  - Active Downloading IPs
  - Active Uploading IPs
  - Most Active Repos by Data Transfer
  - Audit Admin Users
  - Denied Login Attempts
  - Denied Actions by IP
  - Denied Actions by Username
  - Accepted Deploys by Username

---