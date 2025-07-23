# Base image with Miniforge
FROM docker.io/condaforge/miniforge3:latest

# Set work directory
WORKDIR /app

# Copy environment config and install dependencies
COPY env.yml .
RUN conda env create -f env.yml

# Use the new environment
SHELL ["conda", "run", "-n", "bqoptim", "/bin/bash", "-c"]

# Copy app code
COPY . .

# Expose port
EXPOSE 8000

# Run FastAPI using Uvicorn from the created environment
CMD ["conda", "run", "--no-capture-output", "-n", "bqoptim", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
