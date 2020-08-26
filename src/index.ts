import express, { Application, Request, Response, NextFunction } from 'express';

const PORT = process.env.PORT || 8000;
const app: Application = express();

app.get('/', (req: Request, res: Response, next: NextFunction) => {
  res.json({ message: 'Hello World from Docker 🐳' });
});

app.listen(PORT, () =>
  console.log(`App listening on http://localhost:${PORT} 🔥`),
);
