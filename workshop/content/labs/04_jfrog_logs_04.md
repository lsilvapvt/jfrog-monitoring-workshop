
<br>

#### 1. User Interface - System Logs page
    
<br/>

  Launch the JFrog Monitoring - System Logs page
  ```dashboard:open-url
  name: Platform
  url: {{ JFROG_PROTOCOL }}://{{ JFROG_URL }}/ui/admin/monitoring/system_logs
  ```

<br/>
<br/>

#### 2. JFrog CLI Live Logs plugin  

[Documentation](https://www.jfrog.com/confluence/display/JFROG/Live+Logs)   

[README](https://github.com/jfrog/live-logs/blob/main/README.md)   

<br/>

a. Install the plugin  
    ```execute-2
    jfrog plugin install live-logs
    ```

<br/>


b. Configure the JFrog CLI target server  
    ```execute-2
    jfrog config add lab1 --url "$JFROG_PROTOCOL://$JFROG_URL" --access-token "$JFROG_ACCESSTOKEN" --overwrite --interactive=false
    ```

<br/>

c. View the config for the target server  
    ```execute-2
    jfrog live-logs config rt lab1
    ```

<br/>

d. Inspect the Artifactory service log for the target server  
    ```execute-2
    jfrog live-logs logs rt lab1 artifactory-0 artifactory-service.log
    ```

<br/>

e. Tail `artifactory-service.log` from for the target server  
    ```execute-2
    jfrog live-logs logs rt lab1 artifactory-0 artifactory-service.log -f
    ```

<br/>

f. Interrupt the log tail command  
    ```execute-2
    <ctrl+c>
    ```

<br/>

---