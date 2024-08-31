const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('employee_attendance_monitoring', 'root', 'Aku_suka_makan_pizza', {
    host: 'localhost',
    dialect: 'mysql',
});

module.exports = sequelize;

