# -*- coding: utf-8 -*-
import logging


def get_repo_names():
    return ["rzhilkibaev/demo-simple-web"]

def handle(event, context):
    log = logging.getLogger()
    log.setLevel(logging.DEBUG)
    log.debug("received event " + str(event))
    
    repo_name = event["repository"]["full_name"]
    if repo_name in get_repo_names():
        log.info("repository " + repo_name + " changed")
    
    return None
