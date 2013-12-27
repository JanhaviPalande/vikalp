import os

bind = "0.0.0.0:%(port)"
workers = (os.sysconf("SC_NPROCESSORS_ONLN") * 2) + 1
loglevel = "error"
proc_name = "%(proj_name)s"
