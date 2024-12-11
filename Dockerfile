FROM orondoben/r433_rap:version1
# Set working directory
WORKDIR /app

# Copy project files
COPY _targets.R /app/_targets.R
COPY functions.R /app/functions.R

# Create directory for outputs
RUN mkdir -p /home/graphs

# Run targets pipeline by default
CMD ["R", "-e", "targets::tar_make()"]