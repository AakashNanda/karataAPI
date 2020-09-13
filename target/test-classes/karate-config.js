function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  // maven command will be like mvn test -Dkarate.env=L2 or L3 or L6
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  // var result = Karate.callSingle('classpath:examples/users copy2.feature')
  // config.authValue = result;
  return config;
}