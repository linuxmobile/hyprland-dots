#!/bin/python3

import requests
from bs4 import BeautifulSoup as soup

class OS:

    def __init__(self, url, os):
        self.url = url
        self.os = os

    def mk_request(self):
        try:
            with requests.get(self.url) as response:
                page = soup(response.text, 'html.parser')
                return page
        except requests.HTTPError as err:
            print(f"Error! {err}")

    def num_downloads(self):
        page = OS(self.url, self.os).mk_request()

        for downloads in page.find('title'):
            fmt_name = self.os.split('-')[0]
            fmt_dl = downloads.text.split(': ')[1]
            # if fmt_dl.endswith('k'):
                # return int(fmt_dl.replace('k', '000'))
            # else:
            return fmt_dl


if __name__ == '__main__':
    base_url = "https://img.shields.io/github/downloads/"
    distros = [('xelphlinux', 'xelph-iso')]

    for distro in distros:
        print(f" {OS(f'{base_url}{distro[0]}/{distro[1]}/total?label=downloads',distro[0].capitalize()).num_downloads()}")
