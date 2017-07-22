import os
from pathlib import Path
import sys


virtualenv = os.environ.get('VIRTUAL_ENV')

if virtualenv:
    venv_path = list((Path(virtualenv)/'lib').iterdir())[0]/'site-packages'
    sys.path.append(str(venv_path))
