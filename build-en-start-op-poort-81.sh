
#!/bin/bash



docker build -t demo-dw2container .

docker run -dt --name dw2-container -p 81:80 demo-dw2container
