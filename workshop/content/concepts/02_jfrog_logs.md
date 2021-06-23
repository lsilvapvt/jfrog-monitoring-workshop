### Logging

<br/>

The JFrog Platform provides standardized logs for all JFrog products and their services. All logs include a standard format and naming convention. [Documentation](https://www.jfrog.com/confluence/display/JFROG/Logging).

#### Log Files Location and Naming

- Location: `$JFROG_HOME/<product>/var/log`
  ```
    JFROG_HOME
    └── <product>
        ├── ...
        └── var
            ├── ...
            └── log
                └── <service logs>
                └── archived
                    └── <archived service logs>
  ```

- Naming convention for for each log file: 
  - Service log: `<service-name>-service.log` - data on the service activity for each microservice   
    Format: `Timestamp (UTC) [Service Type] [Level] [Trace Id] [Class and Line Number] [Thread] - Message`  

  - Request log: `<service-name>-request.log` - lists http requests (including gRPC) made to the service  
    Format: `Timestamp | Trace ID | Remote Address | Username | Request method | Request URL | Return Status | Request Content Length | Response Content Length | Request Duration | Request User Agent`  

  - Console log: `<service-name>-console.log` - combined log file with server activity for all microservices


- Archiving of logs
  Default rolling policy which will compress log file and move it to `$JFROG_HOME/<product>/var/log/archived`  

---