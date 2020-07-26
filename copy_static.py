# TODO copy static
import os
import shutil
import glob

for one in glob.glob('./templates/admin/*'):
    if one != './templates/admin/index.html':
        if os.path.isdir(one):
            for file_one in glob.glob(f'{one}/*'):
                print(file_one)
                to_file_one = file_one.replace('/templates/admin', '/static/madmin')
                print(to_file_one)
                shutil.move(file_one, to_file_one)
        else:
            print(one)
            to_one = one.replace('/templates/admin', '/static/madmin')
            print(to_one)
            shutil.move(one, to_one)
#
