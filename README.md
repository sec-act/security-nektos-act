# security-with-github-actions

### Pre-requisites
  - install nektos/act (think globally, act locally) [https://github.com/nektos/act](https://github.com/nektos/act) :clap: :clap: :handshake:

### Benifits
  - Your actions/scan run locally
  - No limits on Github runners (timeouts,API calls limits)
  - No Cost - run unlimited jobs

### Setup
```
git clone https://github.com/sec-act/security-with-github-actions.git
cd security-with-github-actions
```
dir structure should look
```
  security-with-github-actions
  |
  |- reports (create if not present with sub-dirs)
  |  |-nuclei
  |  |-gobuster
  |
  |- wordlist
  |- workflow-ymls
```
### Run
```
act -b . -W workflow-ymls/scan-target.yml -j Scan_Url --env TARGET_URL=https://your-target.com
```

container reuse mode (saves build time)
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


