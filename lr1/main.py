import lxml.etree as ElementTree

task_count = 7


def do_task(*, input_path: str, output_path: str, xsl_path: str):
    dom = ElementTree.parse(input_path)
    xslt = ElementTree.parse(xsl_path)
    transform = ElementTree.XSLT(xslt)
    new_dom = transform(dom)

    with open(output_path, 'w') as file:
        inf = ElementTree.tostring(new_dom, pretty_print=True)
        file.write(inf.decode('utf-8'))


if __name__ == '__main__':
    for i in range(1, task_count+1):
        do_task(
            input_path=f'inputs/task{i}.xml',
            output_path=f'outputs/task{i}.html',
            xsl_path=f'xsl/task{i}.xsl'
        )
