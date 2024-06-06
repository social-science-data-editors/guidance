---
layout: withtoc
title:  Licensing Guidance
---

> This site does not provide legal guidance. The information below is provided for discussion and as a suggestion only. Authors should consult with a qualified party, such as a university counsel or a lawyer, as appropriate.

### Default

When depositing in a Code and Data Repository, a license needs to be chosen. If not chosen through the menu, a license file (typically named `LICENSE.txt` or `LICENSE.md`) needs to be provided.

### Some guidance on licensing of databases and software:

- [Cornell's Research Data Management Service Group](https://data.research.cornell.edu/content/intellectual-property)
- Stodden, Victoria. "[Enabling Reproducible Research: Open Licensing For Scientific Innovation](http://web.stanford.edu/~vcs/papers/ijclp-STODDEN-2009.pdf)", *International Journal of Communications Law and Policy*, Issue 13, 2009.
- Bitlaw.com, "[Database Legal Protection](https://www.bitlaw.com/copyright/database.html#compilations), accessed at [https://www.bitlaw.com/copyright/database.html#compilations](https://www.bitlaw.com/copyright/database.html#compilations) on Sept 12, 2019.

For the purpose of replicability, journals will usually insist on an open license that allows for replication by researchers unconnected to the original parties, to the extent allowed by other agreements and the law.
  - For data-only repositories, possible licenses include the [![License: CC BY 4.0](https://img.shields.io/badge/License%20-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/) [Creative Commons Attribution 4.0 International Public License](http://creativecommons.org/licenses/by/4.0/) or the more liberal
[![License: CC0 1.0](https://img.shields.io/badge/License%20-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/) [CC0 1.0 Universal (CC0 1.0) Public Domain Dedication]
  - For code-only repositories, possible licenses include [![License: Modified BSD](https://img.shields.io/badge/License-BSD-lightgrey.svg)](https://opensource.org/licenses/BSD-3-Clause) [3-Clause (Modified) BSD Clause](https://opensource.org/licenses/BSD-3-Clause), though other open-source licenses are equally acceptable (see [https://opensource.org/licenses](https://opensource.org/licenses)). "Code" or "Software" is any statements or instructions to be used directly or indirectly in a computer in order to bring about a certain result, and may include interpretive, object or source code. The CC-BY license is [not recommended for software](https://creativecommons.org/faq/#Can_I_apply_a_Creative_Commons_license_to_software.3F).

### Dual-License Setup

Many repositories contain both code and databases. In that case, the repository might contain  files under different licenses. For instance, some components may come with more restrictive licenses (MIT License for software from
third parties) or more lenient licenses (CC0 license for own code), with a third license for databases.

#### Dual-license Example

The AEA provides an example of a dual-license setup, suitable for use by depositors to various journals' data and code repositories (see the [LICENSE-template](https://aeadataeditor.github.io/aea-de-guidance/LICENSE-template.html)). It combines

- [![License: Modified BSD](https://img.shields.io/badge/License-BSD-lightgrey.svg)](https://opensource.org/licenses/BSD-3-Clause) [Modified BSD License](https://opensource.org/licenses/BSD-3-Clause), applies to all code, scripts, programs, and SOFTWARE
- [![License: CC BY 4.0](https://img.shields.io/badge/License%20-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/) [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/), applies to databases, images, tables, text, and any other objects

#### Multi-license Example
In the example below,
drawn from [Greenelab](https://github.com/greenelab/scihub-manuscript), the specific types of files are identified by "glob patterns" or regular expressions,
but explicit naming of files or directories could also be applied.

[![License: CC BY 4.0](https://img.shields.io/badge/License%20All-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)
[![License: CC0 1.0](https://img.shields.io/badge/License%20Parts-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

> Except when noted otherwise, the entirety of this repository is licensed under a CC BY 4.0 License ([`LICENSE.md`](LICENSE.md)),
> which allows reuse with attribution.

> Since CC BY is not ideal for code and data, certain repository components are also released under the CC0 1.0 public
> domain dedication ([`LICENSE-CC0.md`](LICENSE-CC0.md)).
> All files matched by the following glob patterns are dual licensed under CC BY 4.0 and CC0 1.0:


+ `*.sh`
+ `*.py`
+ `*.yml` / `*.yaml`
+ ....
+ `.gitignore`

> All other files are only available under CC BY 4.0, including:

+ `*.md`
+ `*.html`
+ `*.pdf`
+ `*.docx`

> Except for the following files with different licenses:

+ `build/assets/anchors.js` which is [released](https://www.bryanbraun.com/anchorjs/) under an [MIT License](https://opensource.org/licenses/MIT)
