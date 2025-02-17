# Book Recommendation System


A semantic book recommendation system that suggests books based on natural language queries, categories, and emotional tones.

## Dashboard Preview 
![DashBoard](assert/dashboard.png)

## Table of Contents 📑
- [Installation & Setup](#installation--setup)
  - [Local Installation](#1-local-installation)
  - [Docker Installation](#2-docker-installation)
- [Usage](#usage)
- [Features](#features)
- [Technologies Used](#technologies-used)

## Installation & Setup 🚀

There are two ways to run this application:

### 1. Local Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd <repository-name>
   ```

2. **Create and activate virtual environment**
   ```bash
   python -m venv venv

   # On Windows
   .\venv\Scripts\activate

   # On Unix or MacOS
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set up environment variables**
   - Create a `.env` file in the root directory
   - Add your OpenAI API key:
     ```env
     OPENAI_API_KEY=your_api_key_here
     ```

5. **Run the application**
   ```bash
   python gradio-dashboard.py
   ```

6. **Access the application**
   - Open your browser and navigate to `http://localhost:7860`

### 2. Docker Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd <repository-name>
   ```

2. **Set up environment variables**
   - Create a `.env` file in the root directory
   - Add your OpenAI API key:
     ```env
     OPENAI_API_KEY=your_api_key_here
     ```

3. **Build Docker image**
   ```bash
   docker build -t book-recommendation-system .
   ```

4. **Run Docker container**
   ```bash
   docker run -p 7860:7860 book-recommendation-system
   ```

5. **Access the application**
   - Open your browser and navigate to `http://localhost:7860`

## Usage 📚

1. Enter a description of the type of book you're looking for
2. Select a category (optional)
3. Choose an emotional tone (optional)
4. Click "Find recommendations" to get personalized book suggestions

## Features ✨

- 🔍 Semantic search using OpenAI embeddings
- 📚 Category-based filtering
- 😊 Emotional tone sorting
- 🖼️ Book cover gallery display
- ✍️ Author and description preview

## Technologies Used 🛠️

- Python
- Gradio
- LangChain
- OpenAI Embeddings
- ChromaDB
- Docker


*Made with ❤️ for book lovers*