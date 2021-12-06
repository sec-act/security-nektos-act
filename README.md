# security automation with github actions locally

### Pre-requisites
  - install `nektos/act` (think globally, act locally) [https://github.com/nektos/act](https://github.com/nektos/act) :clap: :clap: :handshake:

### Benifits
  - Your actions/scans run locally
  - you can overcome most of these usage limits, useful for some security scans - [https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#usage-limits)

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

Perform recon
```
act -b . -W workflow-ymls/recon.yml -j recon-domain --env TARGET_DOMAIN=your-target.com
```

Scan single target
```
act -b . -W workflow-ymls/scan-target.yml -j Scan_Url --env TARGET_URL=https://your-target.com
```

container reuse mode (saves build time but your container keep running it seems)
```
act -b . -W workflow-ymls/scan-target.yml -j Scan_Url --env TARGET_URL=https://your-target.com -r
```

### Output Results
```
You should see the results in reports folders - check reports/nuclei and reports/gobuster
```

### Contribute
```
Feel free to contribute your security workflows to this repository. Thank you! 🙏 
```


