FROM python:3.9-slim

WORKDIR /app

COPY app.py .

EXPOSE 8080

CMD ["python", "-c", "import app; import http.server; import socketserver; \
    handler = http.server.SimpleHTTPRequestHandler; \
    httpd = socketserver.TCPServer(('', 8080), handler); \
    print('Serving at port 8080'); \
    httpd.serve_forever()"]
