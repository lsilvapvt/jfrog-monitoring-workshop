
<br>

### Log Inspection - Tail 

1. Tail log file
  ```execute
  clear
  tail -f var/log/router-request.log
  ```
2. Create a generic repository 
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X PUT "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/repositories/dev-generic-local" -H 'Content-Type: application/json' -d @files/genericRepo.json
  ```

3. Upload a file to the new repository
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X PUT "$JFROG_PROTOCOL://$JFROG_URL/artifactory/dev-generic-local/aql/" -H 'Content-Type: application/text' -T @files/find-largest-files.aql
  ```

4. Copy the TraceId from the new log file entry (`request_Uber-Trace-Id` - from start to first semicolon)
    ```execute
    <ctrl+c>
    ```

5. Search for the whole logs with that TraceId 
  ```copy-and-edit
  grep var/log/*.* -e TRACE_ID
  ```

<br>

<br/>

---