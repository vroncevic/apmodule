# -*- coding: utf-8 -*-

project = u'apmodule'
copyright = u'2017, Vladimir Roncevic <elektron.ronca@gmail.com>'
author = u'Vladimir Roncevic <elektron.ronca@gmail.com>'
version = u'4.0'
release = u'https://github.com/vroncevic/apmodule/releases/'
extensions = []
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = None
exclude_patterns = []
pygments_style = None
html_theme = 'classic'
html_static_path = ['_static']
htmlhelp_basename = 'apmoduledoc'
latex_elements = {}
latex_documents = [(
    master_doc, 'apmodule.tex', u'apmodule Documentation',
    u'Vladimir Roncevic \\textless{}elektron.ronca@gmail.com\\textgreater{}',
    'manual'
)]
man_pages = [(master_doc, 'apmodule', u'apmodule Documentation', [author], 1)]
texinfo_documents = [(
    master_doc, 'apmodule', u'apmodule Documentation', author, 'apmodule',
    'One line description of project.', 'Miscellaneous'
)]
epub_title = project
epub_exclude_files = ['search.html']
