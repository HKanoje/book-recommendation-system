FROM python:3.10.11

WORKDIR /app


# Upgrade pip to avoid outdated dependencies
RUN python -m pip install --upgrade pip setuptools wheel

# Copy dependencies first (improves caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application files
COPY . .

# Run the application
CMD ["python", "gradio-dashboard.py"]
