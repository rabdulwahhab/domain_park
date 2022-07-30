# DomainPark - EZ domain parking web app

## Deploying

First, Run the `buildit` script on the target machine.

Next, run the binary.

## Important notes
1. You will need Elixir installed on the target
2. Unless deploying right on the web, configure your reverse-proxy in front of the app to statically set the `Host` header in Requests to this app so it works correctly
