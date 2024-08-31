module.exports = (sequelize, DataTypes) => {
    const Attendance = sequelize.define('Attendance', {
      userId: DataTypes.INTEGER,
      date: DataTypes.DATE,
      photoUrl: DataTypes.STRING,
    });
    Attendance.associate = (models) => {
      Attendance.belongsTo(models.User, { foreignKey: 'userId' });
    };
    return Attendance;
  };