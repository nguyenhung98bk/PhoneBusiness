import { ResponseWrapper, ApiError } from './http';
import { Http } from './http_auth';

export class AccountService {
  static request() {
    return new Http();
  }

  static async register(params) {
    try {
      const response = await this.request().post(
        'account/register',
        params
      );
      localStorage.setItem('customer_csrf', response.data.customer_csrf);
      localStorage.setItem('customer_login', JSON.parse(response.config.data).email);
      return new ResponseWrapper(response);
    } catch (error) {
      throw new ApiError(error);
    }
  }

  static async activeAccount(token) {
    try {
      const response = await this.request().get(
        `account/active_account/${token}`,
      );
      
      console.log(response);
      return new ResponseWrapper(response);
    } catch (error) {
      throw new ApiError(error);
    }
  }
}
