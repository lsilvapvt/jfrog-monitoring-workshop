
### Logs Inspection

  List all log files in the Artifactory server
  ```execute
  ls var/log
  ```

  List all Archived log files in the Artifactory server
  ```execute
  ls var/log/archived
  ```

  Tail the artifactory services log
  ```execute
  tail -f var/log/artifactory-service.log
  ```

  Generate an event:    
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" $JFROG_PROTOCOL://$JFROG_URL/artifactory/api/system/configuration
  ```

  Interrupt the log tail command
  ```execute
  <ctrl+c>
  ```

### Log Verbosity

  [Documentation](https://www.jfrog.com/confluence/display/JFROG/Logging#Logging-ConfiguringLogVerbosity).

  For **Java-based microservices**, `$JFROG_HOME/artifactory/var/etc/artifactory/logback.xml`:
  ```execute
  clear
  cat var/etc/artifactory/logback.xml | grep logger
  ```
  No restart required after update.


  For other microservices, `$JFROG_HOME/<product>/var/etc/system.yaml`:
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