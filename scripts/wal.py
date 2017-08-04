import sys, re
# Python script that replaces {{COLOR}} handlebars with their respective values.
HANDLEBAR_REGEX = re.compile("\{\{(.+)\}\}")
DICT = {
    "foreground": 15,
    "background": 0,
    "color0": 0,
    "color1": 1,
    "color2": 2,
    "color3": 3,
    "color4": 4,
    "color5": 5,
    "color6": 6,
    "color7": 7,
    "color8": 8,
    "color9": 9,
    "color10": 10,
    "color11": 11,
    "color12": 12,
    "color13": 13,
    "color14": 14,
    "color15": 15,
}

def main(argv):
    if (len(argv) - 1) % 2 != 0:
        raise ValueError("Even number of arguments required")
    argv = argv[1:]
    with open("/home/joe/.cache/wal/colors", "r") as colors:
        colors = colors.readlines()
        for index,path in enumerate(argv[1::2]):
            template = argv[index*2]
            target = argv[index*2+1]
            with open(template, "r") as template_file:
                contents = template_file.read()
                matches = HANDLEBAR_REGEX.findall(contents)
                for match in matches:
                    color = 15
                    if match.lower() in DICT:
                        color = DICT[match.lower()]
                    pattern = "\\{\\{" + match + "\\}\\}"
                    contents = re.sub(pattern, colors[color].strip(), contents) 
        #write the new file to target location
        with open(target, "w") as output:
            output.write(contents)
if __name__ == '__main__':
    main(sys.argv)
