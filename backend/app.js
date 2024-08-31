const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const sequelize = require('./config/config');
const authRoutes = require('./routes/auth');
const User = require('./models/User');
const bcrypt = require('bcryptjs');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/api/test', (req, res) => {
  res.json({ message: 'Frontend and Backend are connected!' });
});

app.use('/auth', authRoutes);

sequelize.sync().then(async () => {
  console.log('Database connected and synchronized.');

  const passwordHash = await bcrypt.hash('testpassword', 10);
  await User.findOrCreate({
      where: { username: 'testuser' },
      defaults: { password: passwordHash }
  });

  app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
  });
}).catch((error) => {
  console.error('Unable to connect to the database:', error);
});

app.post('/register', async (req, res) => {
  const { username, password } = req.body;
  try {
      const hashedPassword = await bcrypt.hash(password, 10); // 10 is the salt rounds
      const newUser = await User.create({ username, password: hashedPassword });
      res.status(201).json({ message: 'User created successfully' });
  } catch (error) {
      console.error('Error during user creation:', error);
      res.status(500).json({ message: 'Internal server error' });
  }
});
