class CustomerMailer < ApplicationMailer
  def send_mail_verify_login_id(customer_id, url)
    @customer = Customer.find(customer_id)
    @url = url
    mail(to: @customer.email, subject: 'Thông báo xác thực tài khoản')
  end
end
