
<br>

### Log Inspection - Tail 

<br/>

1. Tail log file
  ```execute
  clear
  tail -f var/log/artifactory-request.log
  ```
2. Create a generic repository 
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X PUT "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/repositories/dev-generic-local" -H 'Content-Type: application/json' -d @files/genericRepo.json
  ```

3. Copy the TRACE_ID from the new log file entry (the ID between the pipe characters after the timestamp)
    ```execute
    <ctrl+c>
    ```

4. Search for the whole logs with that TraceId 
  ```copy-and-edit
  grep var/log/*.* -e TRACE_ID
  ```

<!-- 3. Upload a file to the new repository
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X PUT "$JFROG_PROTOCOL://$JFROG_URL/artifactory/dev-generic-local/aql/" -d @files/find-largest-files.aql
  ``` -->

5. Delete the generic repository 
  ```execute-2
  curl -H "Authorization: Bearer $JFROG_ACCESSTOKEN" -X DELETE "$JFROG_PROTOCOL://$JFROG_URL/artifactory/api/repositories/dev-generic-local"
  ```

<br>

<br/>

---