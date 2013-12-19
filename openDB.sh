#!/bin/bash
PGPASSWORD=postgres psql -h localhost -U postgres $1
