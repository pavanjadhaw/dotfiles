#!/usr/bin/env python3

import sys
import sqlparse

# TODO: Decide what to do about $/?
# contents = contents.replace(f"${identifier}", f"__id_{identifier}")

# contents = """CREATE TABLE "auth0_authentication_strategy" ("id" uuid NOT NULL DEFAULT uuid_generate_v4(), "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT now(), "deletedAt" TIMESTAMP WITH TIME ZONE, "auth0Id" character varying NOT NULL, "lastSignedIn" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), CONSTRAINT "UQ_57986b51a83fd441ada9d0a0208" UNIQUE ("auth0Id"), CONSTRAINT "PK_3a6ae00204298cb255d9f797410" PRIMARY KEY ("id"))"""
contents = sys.stdin.read()
for identifier in range(10):
    contents = contents.replace(f"?{identifier}", f"__id_{identifier}")

# for nightshadedude
comma_first = True

result = sqlparse.format(contents
                         , indent_columns=True
                         , keyword_case='upper'
                         , identifier_case='lower'
                         , reindent=True
                         , output_format='sql'
                         , indent_after_first=True
                         , wrap_after=80
                         , comma_first=comma_first
                         )

for identifier in range(10):
    result = result.replace(f"__id_{identifier}", f"?{identifier}")

print(result.strip())
