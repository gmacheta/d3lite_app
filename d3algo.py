import random

def calculate_sun_time(skintype, uv_index, age):
    """Base Skintype: 1, Base UV Index: 7, Base age range: 1-70, Base time in sun: 8.5 mins"""
    if int(uv_index) < 3:
        return 'There isn\'t enough UVB hitting your area for you to produce any Vitamin D3, please find other sources' \
               'of Vitamin D such as fatty fish, Vitamin D fortified foods, or supplements.'
    if age < 1:
        raise ValueError('Invalid Age Given')
    if 70 > age > 0:
        age_mult = 1
    else:
        age_mult = 4/3
    uv_index_mult = uv_index/7

    time_sun_minutes = 8.5 * uv_index_mult * age_mult * skintype

    return time_sun_minutes


if __name__ == '__main__':
    uv_index = int(input('Please give a sample UV index:'))
    print('[UV index pulled from location data & API]')
    age = int(input('How old are you? '))
    skintype = int(input('What is your Fitzpatrick skin type? Reference the chart below:\n'
                     '(chart not shown here, 1 is super pale, 6 is super dark, 4 is olive, 3 light brown, etc.)'))

    time_outside = calculate_sun_time(skintype, uv_index, age)
    mins = int(time_outside)
    seconds = 60 * (time_outside - mins)

    print(f'You need to spend {mins} minutes and {int(seconds)} seconds to get your daily allotted Vitamin D3.')

    random_time_outside = round(random.uniform(00.00, 60.00), 2)
    time_left = time_outside - random_time_outside
    if time_left < 0:
        time_left = 0
        print(f'Assuming you\'ve been outside for {mins} minutes and '
              f'{int(seconds)}, you don\'t need to spend any more time outside.')
    else:
        mins = int(time_left)
        seconds = 60 * (time_left - mins)
        print(f'Assuming you\'ve been outside for {int(random_time_outside)} minutes and '
              f'{int(60*(random_time_outside-int(random_time_outside)))} seconds, you need {mins} more '
              f'minutes and {int(seconds)} more seconds outside to get your daily allotted Vitamin D3.')
