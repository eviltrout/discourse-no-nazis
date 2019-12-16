# frozen_string_literal: true

# name: discourse-no-nazis
# about: Block users who participated in a neo-nazi forum
# version: 0.0.1
# authors: Robin Ward
# url: https://github.com/eviltrout/discourse-no-nazis

require_relative './hashes'

after_initialize do
  require_dependency 'validators/email_validator'

  class ::EmailValidator < ActiveModel::EachValidator
    alias_method :validate_without_nazi, :validate_each

    def validate_each(record, attribute, value)
      validate_without_nazi(record, attribute, value)
      if record.errors[attribute].blank? && value && DiscourseNoNazis.hit?(value)
        record.errors.add(attribute, I18n.t(:'user.email.blocked'))
      end
    end
  end

end
