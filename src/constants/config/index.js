export const LOCAL_STORAGE_KEY = "myKey";
export const BASE_API_URL = getEnvVar('{REACT_APP_API_BASE_URL}')
export const AUTH_TOKEN = getEnvVar('{REACT_APP_AUTH_TOKEN}')

/** When in develop mode, read env vars normally, when in production output a
 * special string that will be replaced by script
 * @param {string} envVar the env var name
 * @return {string} the env var value
 */
export const REACT_APP_REGION = getEnvVar('{REACT_APP_REGION}')
function getEnvVar(envVarStr) {
  // is true when running: npm run build
  const isProd = process.env.NODE_ENV === 'production'
  const envVar = envVarStr.replace('{', '').replace('}', '')
  return isProd ? envVarStr : process.env[envVar]
}