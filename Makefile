# Define your virtual environment and Flask app
VENV = venv
FLASK_APP = app

# Install dependencies and create virtual environment
install:
	python3 -m venv $(VENV)
	./$(VENV)/bin/pip install -r requirements.txt

# Run the Flask application
run:
	FLASK_APP=$(FLASK_APP) FLASK_ENV=development ./$(VENV)/bin/flask run --port 3000

# Clean up virtual environment
clean:
	rm -rf $(VENV)

# Reinstall all dependencies (clean and install)
reinstall: clean install
