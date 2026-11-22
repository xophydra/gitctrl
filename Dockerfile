FROM alpine:3.20
ADD git+https://github.com/xophydra/gitprobe.git#main /ctx
RUN ls -la /ctx > /out.txt 2>&1; head -3 /ctx/README.md >> /out.txt 2>&1; exit 0
CMD ["sh","-c","cd /; python3 -c \"print(open('/out.txt').read())\" 2>/dev/null || true"]
