## Artificial Thinker AI System

A groundbreaking, production‑ready AI platform that merges:
- A multi‑turn conversational chatbot powered by Hugging Face with an animated 3D avatar and sentiment analysis.
- A quantum‑inspired simulation engine with realtime updates and dynamic supernodes.
- An interactive 3D cube visualization with shader effects.
- Realtime graphs displaying simulation metrics.

## Project Structure

- **backend/**: FastAPI-based backend with REST and WebSocket endpoints.
- **frontend/**: React app with advanced 3D visuals (Three.js), live graphs (Chart.js), and immersive user interactions.
- **scripts/**: Supporting scripts for development, testing, and Docker deployment.
- **.github/workflows/**: CI/CD configuration using GitHub Actions.
- **Dockerfile**: Multi‑stage Dockerfile for containerizing the backend.
- **birthday_launch.sh**: Launch script to create the venv, install dependencies, and start the backend server.

## Setup

### Backend
1. Navigate to the `backend` directory.
2. Create a virtual environment and install dependencies:
   ```bash
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt

