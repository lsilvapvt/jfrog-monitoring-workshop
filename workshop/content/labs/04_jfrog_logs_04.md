
<br>

### Log Inspection - Alternatives

#### 1. Monitoring - System Logs UI page   
    
  Launch the JFrog Monitoring - System Logs page
  ```dashboard:open-url
  name: Platform
  url: {{ JFROG_PROTOCOL }}://{{ JFROG_URL }}/ui/admin/monitoring/system_logs
  ```


#### 2. JFrog CLI Live Logs plugin 

    [Documentation](https://www.jfrog.com/confluence/display/JFROG/Live+Logs)   
    [README](https://github.com/jfrog/live-logs/blob/main/README.md)   

    Install the plugin
    ```execute-2
    jfrog plugin install live-logs
    ```

    Configure the JFrog CLI target server
    ```execute-2
    jfrog config add lab1 --url "$JFROG_PROTOCOL://$JFROG_URL" --access-token "$JFROG_ACCESSTOKEN" --overwrite --interactive=false
    ```

    View the config for the target server
    ```execute-2
    jfrog live-logs config rt lab1
    ```

    Inspect the Artifactory service log for the target server
    ```execute-2
    jfrog live-logs logs rt lab1 artifactory-0 artifactory-service.log
    ```

    Tail `artifactory-service.log` from for the target server
    ```execute-2
    jfrog live-logs logs rt lab1 artifactory-0 artifactory-service.log -f
    ```
    
    Interrupt the log tail command
    ```execute-2
    <ctrl+c>
    ```

<br/>

---