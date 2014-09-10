var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'nr-soccer'
    },
    port: 3000,
    db: 'mongodb://localhost/nr-soccer-development'
    
  },

  test: {
    root: rootPath,
    app: {
      name: 'nr-soccer'
    },
    port: 3000,
    db: 'mongodb://localhost/nr-soccer-test'
    
  },

  production: {
    root: rootPath,
    app: {
      name: 'nr-soccer'
    },
    port: 3000,
    db: 'mongodb://localhost/nr-soccer-production'
    
  }
};

module.exports = config[env];
