# Security Automation with GitHub Actions (locally nektos/act)

### Pre-requisites
  - install `nektos/act` (think globally, act locally) [https://github.com/nektos/act](https://github.com/nektos/act) :clap: :clap: :handshake:

### Benefits
  - Your actions/scans run locally
  - you can overcome most of these usage limits - [https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits)
  - useful for some security scans

### Setup
```
git clone https://github.com/sec-act/security-nektos-act.git
cd security-nektos-act
```
dir structure should look
```
  security-nektos-act
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
Perform recon
```
act -b . -W workflow-ymls/recon.yml -j recon-domain --env TARGET_DOMAIN=your-target.com
```

Run single job

```
act -b . -W workflow-ymls/scan-target.yml --env TARGET_DOMAIN=your-target.com -j nuclei-scan-list
```

```
act -b . -W workflow-ymls/scan-target.yml --env TARGET_URL=https://your-target.com -j nuclei-scan
```

container reuse mode (saves build time but your container keep running it seems)
```
act -b . -W workflow-ymls/scan-target.yml -j xxx --env TARGET_URL=https://your-target.com -r
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

