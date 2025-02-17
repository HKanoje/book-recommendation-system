FROM python:3.10-bookworm

WORKDIR /app

# Upgrade pip to avoid outdated dependencies
RUN python -m pip install --upgrade pip setuptools wheel

# Copy dependencies first (improves caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application files
COPY . .

# Expose the port your Gradio app runs on
EXPOSE 3000

# Run the application
CMD ["python", "gradio-dashboard.py"]