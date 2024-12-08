
alias e := edit

edit file:
  sops edit {{file}}

alias g := generate

generate length name:
  sops -d ./accounts.yaml >> ./new.yaml
  echo '{{name}}: |' >> ./new.yaml
  echo "    $(tr -dc 'A-Za-z0-9!@#$%^&*()=' < /dev/urandom | head -c {{length}})" >> ./new.yaml

