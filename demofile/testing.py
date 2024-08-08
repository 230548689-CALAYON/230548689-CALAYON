print("Hello and Welcome to the M&M Scheduler Checker for City X!")
print("Kindly enter your information to proceed:")

# Input user information
name = input("Enter your name: ")
age = int(input("Enter your age: "))
district = int(input("Enter your district number (1-9): "))

# Determine district color
if district in [1, 3, 5]:
    district_color = "Blue"
elif district in [2, 4, 6]:
    district_color = "Red"
elif district in [7, 8, 9]:
    district_color = "Green"
else:
    district_color = "Unknown"

# Determine M&M Schedule based on age and district
if district_color == "Blue":
    if age < 18 in age > 59:
        mm_schedule = "Mondays, Thursdays (8:30am - 8:30pm)"
    else:
        mm_schedule = "Mondays, Thursdays (8:30am - 8:30pm)"
elif district_color == "Red":
    if age < 18 in age > 59:
        mm_schedule = "Wednesday, Saturdays (8:30am - 8:30pm)"
    else:
        mm_schedule = "Saturdays (8:30am - 8:30pm) and Sundays (6:30am - 10:30pm)"
elif district_color == "Green":
    if age < 18 in age > 59:
        mm_schedule = "Tuesdays, Fridays (8:30am - 8:30pm)"
    else:
        mm_schedule = "Tuesdays, Fridays (8:30am - 8:30pm)"
elif district_color == "Blue":
    if age < 59 in age > 90:
        mm_schedule = "Mondays, Thursdays (8:30am - 8:30pm)"
    else:
        mm_schedule = "Mondays, Thursdays (8:30am - 8:30pm)"
elif district_color == "Red":
    if age < 59 in age > 90:
        mm_schedule = "Saturdays (8:30am - 8:30pm)"
    else:
        mm_schedule = "Saturdays (8:30am - 8:30pm) and Sundays (6:30 - 10:30)"
elif district_color == "Green":
    if age < 59 in age > 90:
        mm_schedule = "Fridays (8:30am - 8:30pm) and Sundays (6:30 - 10:30)"
    else:
        mm_schedule = "Fridays (8:30am - 8:30pm) and Sundays (6:30 - 10:30)"
else:
    mm_schedule = "Invalid district number"

# Display user information and M&M schedule
print("\nUser Information:")
print("Name:", name)
print("District Color:", district_color)
print("M&M Schedule:", mm_schedule)
