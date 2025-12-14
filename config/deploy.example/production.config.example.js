module.exports = {
  server: {
    host: 'YOUR_PRODUCTION_IP',
    port: 22,
    username: 'YOUR_USERNAME',
    privateKey: '/path/to/your/ssh/key',
  },
  paths: {
    remote: '/var/www/html/wp-content/plugins/not-wasted',
    backup: '/var/backups/not-wasted',
  },
  wordpress: {
    url: 'https://yourdomain.com',
    dbHost: 'localhost',
    dbName: 'wordpress_prod',
    dbUser: 'wp_user',
  },
  deployment: {
    keepReleases: 5,
    backup: true,
    runMigrations: true,
  }
};
