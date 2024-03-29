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


## Cite as

See the GLAM Workbench or [Zenodo](https://doi.org/10.5281/zenodo.3894079) for up-to-date citation details.

----

This repository is part of the [GLAM Workbench](https://glam-workbench.github.io/).  
If you think this project is worthwhile, you might like [to sponsor me on GitHub](https://github.com/sponsors/wragge?o=esb).
