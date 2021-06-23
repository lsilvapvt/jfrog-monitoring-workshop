
<br>

### Log Inspection

<br/>


  List all log files in the Artifactory server
  ```execute
  ls var/log
  ```

<br/>


  - **artifactory.log** - All events inside artifactory and replication/backups, metadata calculation are captured here. UI path Admin→ System Logs
  - **traffic.log** - Not enabled by default. Only uploads and download to/from artifactory is captured here. GET/PUT/POST to artifactory are captured here. It is not visible via UI 
  - **access.log** - Information on who logged in and logged out
  - **audit-trail.log** - Not enabled by default. Need to be enabled- who did what is captured in this log. User level information
  - **request.log** - All request coming to artifactory - Uploads, downloads and UI requests.

<br/>


  List all Archived log files in the Artifactory server
  ```execute
  ls var/log/archived
  ```

<br/>


  Tail the artifactory services log
  ```execute
  tail -f var/log/artifactory-service.log
  ```
<br/>


  <!-- Generate an event:    
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" $JFROG_PROTOCOL://$JFROG_URL/artifactory/api/system/configuration
  ```

  Inspect storage information:    
  ```execute-2
  clear
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" $JFROG_PROTOCOL://$JFROG_URL/artifactory/api/storageinfo | jq .
  ```

<br/> -->

  Interrupt the log tail command
  ```execute
  <ctrl+c>
  ```
<br>

### Log Verbosity

<br>

  [Documentation](https://www.jfrog.com/confluence/display/JFROG/Logging#Logging-ConfiguringLogVerbosity).

- For **Java-based microservices**, `$JFROG_HOME/artifactory/var/etc/artifactory/logback.xml`
  ```execute
  clear
  cat var/etc/artifactory/logback.xml | grep logger
  ```  
  No restart required after update.


- For other microservices, `$JFROG_HOME/<product>/var/etc/system.yaml`   
  ```execute
  clear
  cat var/etc/system.yaml
  ```  
  System restart required after update.
  
  Example:  
  ```
  frontend:
    logging:
      application:
        level: info
  ```


<br/>

---