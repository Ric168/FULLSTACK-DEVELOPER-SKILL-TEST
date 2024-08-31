const express = require('express');
const multer = require('multer');
const auth = require('../middlewares/auth');
const { Attendance, User } = require('../models');

const router = express.Router();
const upload = multer({ dest: 'uploads/' });

router.post('/checkin', auth, upload.single('photo'), async (req, res) => {
  const { user } = req;
  const { date } = req.body;
  const photoUrl = req.file.path;

  const attendance = await Attendance.create({
    userId: user.id,
    date,
    photoUrl,
  });

  res.send(attendance);
});

router.get('/records', auth, async (req, res) => {
  const records = await Attendance.findAll({ include: [User] });
  res.send(records);
});

module.exports = router;