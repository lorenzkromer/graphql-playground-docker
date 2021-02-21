# graphql-playground-docker
Tiny Docker image for [graphql-playground](https://github.com/prismagraphql/graphql-playground) served by Golang.

# Usage
```docker run --name graphql-playground -d mkrou/graphql-playground-docker```

# Environment Variables
### HOST
The GraphQL endpoint url. Default: http://localhost:9000/graphql

### THEME
Property to customize your color theme. Possible values: 'dark', 'light'. Default: dark

### TITLE
Property to customize title. Default: "GraphQL Playground"

### PORT
The GraphQL Playground serving port. Default: 8080

### AUTH_TOKEN
Basic Authorization header. Results in `Bearer <YOUR_AUTH_TOKEN>`. Default: ""

### X_API_KEY
Custom API Key. Default: ""