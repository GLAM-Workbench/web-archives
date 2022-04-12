#!/bin/bash
pytest --nbval-lax $1
if nbqa isort $1; then
    echo "ISort:    $(tput setab 2)$(tput setaf 7)PASSED$(tput sgr0)"
else
    echo "ISort:    $(tput setab 1)$(tput setaf 7)FAILED$(tput sgr0)"
fi
if nbqa black $1; then
    echo "Black:    $(tput setab 2)$(tput setaf 7)PASSED$(tput sgr0)"
else
    echo "Black:    $(tput setab 1)$(tput setaf 7)FAILED$(tput sgr0)"
fi
if nbqa flake8 $1; then
    echo "Flake8:   $(tput setab 2)$(tput setaf 7)PASSED$(tput sgr0)"
else
    echo "Flake8:   $(tput setab 1)$(tput setaf 7)FAILED$(tput sgr0)"
fi
