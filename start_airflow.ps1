Write-Host "Setting up Airflow with Docker..." -ForegroundColor Green

Write-Host "Step 1: Initializing Airflow database..." -ForegroundColor Yellow
docker-compose up airflow-init

--comment here 
Write-Host "Step 2: Starting Airflow services..." -ForegroundColor Yellow
docker-compose up -d

Write-Host "Airflow is starting up..." -ForegroundColor Green
Write-Host "Web UI will be available at: http://localhost:8080" -ForegroundColor Cyan
Write-Host "Username: airflow" -ForegroundColor Cyan
Write-Host "Password: airflow" -ForegroundColor Cyan


Write-Host "Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")