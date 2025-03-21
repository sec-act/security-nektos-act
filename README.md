# security automation with github actions (locally nektos/act)

### Pre-requisites
  - install `nektos/act` (think globally, act locally) [https://github.com/nektos/act](https://github.com/nektos/act) :clap: :clap: :handshake:

### Benefits
  - Your actions/scans run locally
  - you can overcome most of these usage limits - [https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits)
  - useful for some security scans

### Setup
```
git clone https://github.com/sec-act/security-auto-with-github-actions.git
cd security-auto-with-github-actions
```
dir structure should look
```
  security-auto-with-github-actions
  |
  |- reports (create if not present with sub-dirs)
  |  |-nuclei
  |  |-gobuster
  |  |-subfinder
  |  |-httpx
  |
  |- wordlist
  |- workflow-ymls
```
### Run

Scan single target(url) and single job
```
act -b . -W workflow-ymls/scan-target.yml --env TARGET_URL=https://your-target.com -j nmap_scan
```
```
act -b . -W workflow-ymls/scan-target.yml --env TARGET_URL=https://your-target.com -j nuclei_scan
```

```
act -b . -W workflow-ymls/scan-target.yml --env TARGET_URL=https://your-target.com -j gobuster_scan
```

container reuse mode (saves build time but your container keep running it seems)
```
act -b . -W workflow-ymls/scan-target.yml -j xxx --env TARGET_URL=https://your-target.com -r
```

Perform recon
```
act -b . -W workflow-ymls/recon.yml -j recon-domain --env TARGET_DOMAIN=your-target.com
```

### Output Results
```
You should see the results in reports folders - check reports/nuclei and reports/gobuster
```

### Contribute
```
Feel free to contribute your security workflows to this repository. Thank you! 🙏 
```

### Blog
  [https://medium.com/@koti2/security-automation-with-github-actions-locally-with-nektos-act-5fa71d1d761a](https://medium.com/@koti2/security-automation-with-github-actions-locally-with-nektos-act-5fa71d1d761a)

