/// @description Insert description here
// You can write your code in this editor
age += 0.125;

leafswayfactor[0] = int64( (sin(age+0.1) / 8) *13 )
leafswayfactor[1] = int64((sin(age+0.3) / 8) *13  )
leafswayfactor[2] = int64((sin(age+0.9) / 8) *13)
leafswayfactor[3] = int64((sin(age+1) / 8) *13)
leafswayfactor[4] = int64((sin(age+0.25) / 8) *13)

leafswayfactor[5] = int64( (sin(age*0.25) / 8) * 15 )