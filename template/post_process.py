import re
import sys

if len(sys.argv) != 2:
    print('Expected an input file', file=sys.stderr)
    print(sys.argv[0], '<input>', file=sys.stderr)
    sys.exit(1)

input = sys.argv[1]

def enforce_nobreak(content):
    while True:
        chunk = re.search(r'NOBREAK##[^\|]*##NOBREAK', content, re.MULTILINE)
        if chunk:
            clean_chunk = chunk.group(0)[9:-9].replace('\n', ' ')
            clean_chunk = re.sub(r'\s\s+', ' ', clean_chunk)
            content = content.replace(chunk.group(0), clean_chunk)
        else:
            return content

def replace_code_block(content):
    return re.sub(r'</?pre>', '```', content)

with open(input, 'r', encoding='utf8') as input:
    content = input.read()
    content = enforce_nobreak(content)
    content = replace_code_block(content)
    print(content)
