#!/bin/bash
#
# Helper functions for Django projects in virtual env
#
# . ~/django_env_functions.sh
# https://docs.djangoproject.com/en/1.4/ref/django-admin/
# https://gist.github.com/2889330

function myenv() {
    deactivate
    source venv/bin/activate
    export DJANGO_SETTINGS_MODULE="settings"
}

function testenv() {
    deactivate
    source venv/bin/activate
    export DJANGO_SETTINGS_MODULE="test_settings"
}

function freeze(){
    pip freeze > requirements.txt
}

function dj() {
    # run arbitrary django commands
    # python django-admin.py $*
    python manage.py $*
}

function djsh() {
    # run shell for active environment
    #django-admin.py shell --settings $DJANGO_SETTINGS_MODULE
    dj shell
}

function djdb() {
    # run db shell for active environment
    dj dbshell
}

function collectstatic() {
    # run collect static for environment & automatically say yes
    #django-admin.py collectstatic --noinput --settings $DJANGO_SETTINGS_MODULE
    dj collectstatic --noinput
}