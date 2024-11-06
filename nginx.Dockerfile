# השתמש באובונטו כאימג' בסיסי
FROM ubuntu:latest

# התקן את Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# העתק את הקובץ nginx.conf למיקום המתאים
COPY nginx.conf /etc/nginx/nginx.conf

# חשוף את שני הפורטים עבור שני השרתים
EXPOSE 8080 8081

# הפעל את Nginx
CMD ["nginx", "-g", "daemon off;"]
