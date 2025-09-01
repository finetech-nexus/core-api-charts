# selfService-helm-charts

📂 Structure of chart

apim/  
├── templates/  
├── Chart.yaml        
├── values.yaml

🧪 Installation

helm dependency update
helm upgrade -install self-service  . -f values.yaml --namespace back-end   --create-namespace


TODO
Security no transfer response all data