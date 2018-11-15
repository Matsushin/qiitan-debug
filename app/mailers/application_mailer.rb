class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@qiitan-debug.jp', reply_to: 'support@qiitan-debug.jp'
  layout 'mailer'
end
