
from faker import Faker

fake = Faker('pt-BR')
def Data_Inf():
    data = [('firstName',fake.name()),('middleName',fake.name()),
    ('lastName',fake.last_name_male()),('nickname',fake.name_male()),
    ('employee',fake.random_number()),('otherId',fake.random_number()),
    ('driverLicense',fake.random_number()),('licenseExpire',fake.date_this_year()),
    ('ssnLicense',fake.random_number()),('sinLicense',fake.random_number()),
    ('militarservice',fake.random_number())]
    return dict(data)

print(Data_Inf())


# def handle_nationality():
#  while nationality_field.text != 'Bangladeshi':
#     nationality_field.send_keys(Keys.ARROW_DOWN)
#     nationality_field.send_keys(Keys.ENTER)
#     write_in_file("Log/report.txt", "nationality: " + nationality_field.text + " selected successfully!")