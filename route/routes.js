'use strict';
module.exports = function(app) {
  var controller = require('../controller/controller');
  // todoList Routes
  app.route('/hentskibinfo')
    .get(controller.hentskibinfo);
    

  app.route('/hentskibdata')
    .post(controller.hentskibdata);

  app.route('/opretskibinfo')
  .post(controller.opretskibinfo);

  app.route('/opretskibdata')
  .post(controller.opretskibdata);
};