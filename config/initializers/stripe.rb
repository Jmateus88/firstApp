if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_R2ALWA5VgkVEsUl7oNr2cMFr',
    :secret_key => 'sk_test_cBK3KwT48EOwz1xRbwLdexu1 Roll Key
Test Publishable Key:'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]