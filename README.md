# selfService-helm-charts

📂 Structure of chart

apim/  
├── templates/  
├── Chart.yaml        
├── values.yaml

🧪 Installation

helm dependency update
helm upgrade -install core-banking-api  . -f valuesfr.yaml --namespace backend-eu   --create-namespace
helm upgrade -install core-banking-api  . -f values.yaml --namespace backend-tn   --create-namespace


TODO
Security no transfer response all data