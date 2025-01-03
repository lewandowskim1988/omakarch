cat <<EOF >aws
#!/bin/sh

docker run --rm -it -v ~/.aws:/root/.aws -v ~/.kube:/root/.kube -v ~/Downloads:/aws/ public.ecr.aws/aws-cli/aws-cli "$@"
EOF

chmod +x aws
mv aws ~/.local/share/omakarch/bin/