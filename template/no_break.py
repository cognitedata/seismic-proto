import re
import sys

if len(sys.argv) != 2:
    print('Expected an input file', file=sys.stderr)
    print(sys.argv[0], '<input>', file=sys.stderr)
    sys.exit(1)

input = sys.argv[1]

with open(input, 'r', encoding='utf8') as input:
    content = input.read()
    while True:
        chunk = re.search(r'NOBREAK##[^\|]*##NOBREAK', content, re.MULTILINE)
        if not chunk:
            break
        clean_chunk = chunk.group(0)[9:-9].replace('\n', ' ').replace(r'\s\s+', ' ')
        content = content.replace(chunk.group(0), clean_chunk)
    print(content.replace('\n\n', '\n'))
