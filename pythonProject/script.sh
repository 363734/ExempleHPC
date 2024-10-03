



# Create requirement file
pip freeze > requirements.txt

# Create venv with given python version (need to be installed)
virtualenv venv --python=python3.12


# To load to says what we need
module load Python/3.11.3-GCCcore-12.3.0
module load virtualenv