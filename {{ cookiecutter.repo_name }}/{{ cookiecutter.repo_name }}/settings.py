import os
import dotenv
import signal

signal.signal(signal.SIGINT, signal.default_int_handler)

dotenv.load_dotenv(dotenv.find_dotenv())

cwd = os.getcwd()
optuna_db_path = os.getenv("optuna_db_path")
RAND_STATE = 42
