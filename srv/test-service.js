module.exports = async (srv) => {
  srv.after('CREATE', 'TestService.RootEntity', (req, res) => {
    const codes = req.childEntities?.map(c => c.code).join(", ");
    res.notify({
      code: '200',
      message: `Triggered save with codes ${codes}`
    });
  });
};