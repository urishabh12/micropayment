module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8101,
      network_id: "1114", // Match any network id
      gas: 8000000,
      from: "0x8702faa023fa155616716f70811a10617e1ed607"
    }
  }
};
