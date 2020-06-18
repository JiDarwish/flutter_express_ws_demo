export default (req, res, next) => {
  req.user = 'Ji';
  req.token = 'TOKEN SO COOL';
  return next();
};
