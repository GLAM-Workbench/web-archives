# Working with web archives

We tend to think of a web archive as a site we go to when links are broken – a useful fallback, rather than a source of new research data. But web archives don't just store old web pages, they capture multiple versions of web resources over time. Using web archives we can observe change – we can ask historical questions. This collection of notebooks is intended to help historians, and other researchers, frame those questions by revealing what sort of data is available, how to get it, and what you can do with it.

Web Archives share systems and standards, making it much easier for researchers wanting to get their hands on useful data. These notebooks focus on four particular web archives: the [UK Web Archive](https://www.webarchive.org.uk/), the [Australian Web Archive](https://trove.nla.gov.au/website) (National Library of Australia ), the [New Zealand Web Archive](https://natlib.govt.nz/collections/a-z/new-zealand-web-archive) (National Library of New Zealand), and the [Internet Archive](https://archive.org/web/). However, the tools and approaches here could be easily extended to other web archives.

Web archives are huge, and access is often limited for legal reasons. These notebooks focus on data that is readily accessible and able to be used without the need for special equipment. They use existing APIs to get data in manageable chunks. But many of the examples demonstrated can also be scaled up to build substantial datasets for analysis – you just have to be patient!

These notebooks are a starting point that I hope will encourage researchers to investigate the possibilities of web archives in more detail. They're intended to compliment the fabulous work being by projects such as [Archives Unleashed](https://archivesunleashed.org/) to open web archives to new research uses.

The development of these notebooks was supported by the International Internet Preservation Consortium's [Discretionary Funding Programme 2019-2020](http://netpreserve.org/projects/), with the participation of the British Library, the National Library of Australia, and the National Library of New Zealand. Thanks all!

See the [web archives section](https://glam-workbench.github.io/web-archives/) of the [GLAM Workbench](https://glam-workbench.github.io/) for more information.

## Notebook topics

### Types of data

* [**Timegates, Timemaps, and Mementos**](memento.ipynb) – explore how the Memento protocol helps you get machine-readable data about web archive captures
* [**Exploring the Internet Archive's CDX API**](exploring_cdx_api.ipynb) – some web archives provide indexes of the web pages they've archived through an API, this notebook looks in detail at the data provided by the Internet Archive's CDX API
* [**Comparing CDX APIs**](comparing_cdx_apis.ipynb) – this notebook documents differences between the Internet Archive's Wayback CDX API and the PyWb CDX API (used by AWA and UKWA)
* [**Timemaps vs CDX APIs**](getting_all_snapshots_timemap_vs_cdx.ipynb) – both Timemaps and CDX APIs can give us a list of captures from a particular web page, this notebook compares the results

### Harvesting data and creating datasets

* [**Get the archived version of a page closest to a particular date**](get_a_memento.ipynb) – the Memento API enables us to get the archived version of a page closest to a particular date, the functions in this notebook smooth out these some variations across repositories
* [**Find all the archived versions of a web page**](find_all_captures.ipynb) – you can get all the captures of an archived page using either Timemaps or the CDX API, this notebook demonstrates both
* [**Harvesting collections of text from archived web pages**](getting_text_from_web_pages.ipynb) – create a dataset from the text contents of a single page across time, or multiple pages
* [**Harvesting data about a domain using the IA CDX API**](harvesting_domain_data.ipynb) – extract information about a whole domain using `prefix` and `domain` queries
* [**Find and explore Powerpoint presentations from a specific domain**](explore_presentations.ipynb) – a complete workflow from web archive to Powerpoints to PDFS to images and text, and explore it all in Datasette
* [**Exploring subdomains in the whole of gov.au**](harvesting_gov_au_domains.ipynb) - scale up your harvesting to assemble a complete set of subdomains over time, and visualise the results as a dendrogram

### Exploring change over time

* [**Compare two versions of an archived web page**](show_diffs.ipynb) – demonstrates a number of different ways to versions of an archive web page can be compared, from metadata to screenshots
* [**Observing change in a web page over time**](change_in_a_page_over_time.ipynb) – getting and visualising information about all the captures of a single page over time
* [**Create and compare full page screenshots from archived web pages**](save_screenshot.ipynb) – generate full page screenshots of archived web pages, compare pages, captures, even repositories
* [**Using screenshots to visualise change in a page over time**](screenshots_over_time_using_timemaps.ipynb) – create a time series of screenshots, one for each year, compiled into a single image
* [**Display changes in the text of an archived web page over time**](display-text-changes-from-timemap.ipynb) – work through, capture by capture, showing how the text contents of an archived web page has changed
* [**Find when a piece of text appears in an archived web page**](find-text-in-page-from-timemap.ipynb) – look for the first or last occurance of text string in an archived web page, or just find every occurance and chart the frequency

<!-- START RUN INFO -->

## Run these notebooks

There are a number of different ways to use these notebooks. Binder is quickest and easiest, but it doesn't save your data. I've listed the options below from easiest to most complicated (requiring more technical knowledge).

### Using Binder

[![Launch on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/GLAM-Workbench/web-archives/master/?urlpath=lab/tree/index.md)

Click on the button above to launch the notebooks in this repository using the [Binder](https://mybinder.org/) service (it might take a little while to load). This is a free service, but note that sessions will close if you stop using the notebooks, and no data will be saved. Make sure you download any changed notebooks or harvested data that you want to save.

See the [Using Binder](https://glam-workbench.net/using-binder/) section of the GLAM Workbench for more details.

### Using Reclaim Cloud

[![Launch on Reclaim Cloud](https://glam-workbench.github.io/images/launch-on-reclaim-cloud.svg)](https://app.my.reclaim.cloud/?manifest=https://raw.githubusercontent.com/GLAM-Workbench/web-archives/master/reclaim-manifest.jps)

[Reclaim Cloud](https://reclaim.cloud/) is a paid hosting service, aimed particularly at supported digital scholarship in hte humanities. Unlike Binder, the environments you create on Reclaim Cloud will save your data – even if you switch them off! To run this repository on Reclaim Cloud for the first time:

* Create a [Reclaim Cloud](https://reclaim.cloud/) account and log in.
* Click on the button above to start the installation process.
* A dialogue box will ask you to set a password, this is used to limit access to your Jupyter installation.
* Sit back and wait for the installation to complete!
* Once the installation is finished click on the 'Open in Browser' button of your newly created environment (note that you might need to wait a few minutes before everything is ready).

See the [Using Reclaim Cloud](https://glam-workbench.net/using-reclaim-cloud/) section GLAM Workbench [for more details.

### Using Docker

You can use Docker to run a pre-built computing environment on your own computer. It will set up everything you need to run the notebooks in this repository. This is free, but requires more technical knowledge – you'll have to install Docker on your computer, and be able to use the command line.

* Install [Docker Desktop](https://docs.docker.com/get-docker/).
* Create a new directory for this repository and open it from the command line.
* From the command line, run the following command:  
  ```
  docker run -p 8888:8888 --name web-archives -v "$PWD":/home/jovyan/work glamworkbench/web-archives repo2docker-entrypoint jupyter lab --ip 0.0.0.0 --NotebookApp.token='' --LabApp.default_url='/lab/tree/index.md'
  ```
* It will take a while to download and configure the Docker image. Once it's ready you'll see a message saying that Jupyter Notebook is running.
* Point your web browser to `http://127.0.0.1:8888`

See the [Using Docker](https://glam-workbench.net/using-docker/) section of the GLAM Workbench for more details.

### Setting up on your own computer

If you know your way around the command line and are comfortable installing software, you might want to set up your own computer to run these notebooks.

Assuming you have recent versions of Python and Git installed, the steps might be something like:

* Create a virtual environment, eg: `python -m venv web-archives`
* Open the new directory" `cd web-archives`
* Activate the environment `source bin/activate`
* Clone the repository: `git clone https://github.com/GLAM-Workbench/web-archives.git notebooks`
* Open the new `notebooks` directory: `cd notebooks`
* Install the necessary Python packages: `pip install -r requirements.txt`
* Run Jupyter: `jupyter lab`

See the GLAM Workbench for more details.

<!-- END RUN INFO -->

## Cite as

See the GLAM Workbench or [Zenodo](https://doi.org/10.5281/zenodo.3894079) for up-to-date citation details.

----

This repository is part of the [GLAM Workbench](https://glam-workbench.github.io/).  
If you think this project is worthwhile, you might like [to sponsor me on GitHub](https://github.com/sponsors/wragge?o=esb).
