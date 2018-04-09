//
//  JSONForecastTests_Supporting.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

// MARK: - Supporting functionality
extension JSONForeCastTests {
    
    func getSampleJSON() -> Data {
        
        return """
                {
                "cod": "200",
                "message": 0.0049,
                "cnt": 40,
                "list": [
                    {
                        "dt": 1523016000,
                        "main": {
                            "temp": 36.28,
                            "temp_min": 31.71,
                            "temp_max": 36.28,
                            "pressure": 1019.02,
                            "sea_level": 1033.5,
                            "grnd_level": 1019.02,
                            "humidity": 70,
                            "temp_kf": 2.54
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 80
                        },
                        "wind": {
                            "speed": 3.98,
                            "deg": 162.505
                        },
                        "rain": {
                            "3h": 0.015
                        },
                        "snow": {
                            "3h": 0.4285
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 12:00:00"
                    },
                    {
                        "dt": 1523026800,
                        "main": {
                            "temp": 41.77,
                            "temp_min": 38.35,
                            "temp_max": 41.77,
                            "pressure": 1015.02,
                            "sea_level": 1029.35,
                            "grnd_level": 1015.02,
                            "humidity": 87,
                            "temp_kf": 1.9
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.02,
                            "deg": 156.002
                        },
                        "rain": {
                            "3h": 0.2025
                        },
                        "snow": {
                            "3h": 0.727
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 15:00:00"
                    },
                    {
                        "dt": 1523037600,
                        "main": {
                            "temp": 54.36,
                            "temp_min": 52.07,
                            "temp_max": 54.36,
                            "pressure": 1009.03,
                            "sea_level": 1023.19,
                            "grnd_level": 1009.03,
                            "humidity": 64,
                            "temp_kf": 1.27
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 10.31,
                            "deg": 214.002
                        },
                        "rain": {
                            "3h": 0.0725
                        },
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 18:00:00"
                    },
                    {
                        "dt": 1523048400,
                        "main": {
                            "temp": 56.12,
                            "temp_min": 54.98,
                            "temp_max": 56.12,
                            "pressure": 1006.14,
                            "sea_level": 1019.88,
                            "grnd_level": 1006.14,
                            "humidity": 55,
                            "temp_kf": 0.63
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 11.25,
                            "deg": 229
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 21:00:00"
                    },
                    {
                        "dt": 1523059200,
                        "main": {
                            "temp": 53.75,
                            "temp_min": 53.75,
                            "temp_max": 53.75,
                            "pressure": 1005.32,
                            "sea_level": 1019.14,
                            "grnd_level": 1005.32,
                            "humidity": 56,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04n"
                            }
                        ],
                        "clouds": {
                            "all": 76
                        },
                        "wind": {
                            "speed": 10.13,
                            "deg": 238.004
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-07 00:00:00"
                    },
                    {
                        "dt": 1523070000,
                        "main": {
                            "temp": 53.63,
                            "temp_min": 53.63,
                            "temp_max": 53.63,
                            "pressure": 1005.27,
                            "sea_level": 1019.01,
                            "grnd_level": 1005.27,
                            "humidity": 58,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04n"
                            }
                        ],
                        "clouds": {
                            "all": 76
                        },
                        "wind": {
                            "speed": 9.46,
                            "deg": 255.503
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-07 03:00:00"
                    },
                    {
                        "dt": 1523080800,
                        "main": {
                            "temp": 50.71,
                            "temp_min": 50.71,
                            "temp_max": 50.71,
                            "pressure": 1005.33,
                            "sea_level": 1019.14,
                            "grnd_level": 1005.33,
                            "humidity": 65,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 9.42,
                            "deg": 275.503
                        },
                        "rain": {
                            "3h": 0.03
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-07 06:00:00"
                    },
                    {
                        "dt": 1523091600,
                        "main": {
                            "temp": 41.35,
                            "temp_min": 41.35,
                            "temp_max": 41.35,
                            "pressure": 1007.89,
                            "sea_level": 1022.1,
                            "grnd_level": 1007.89,
                            "humidity": 87,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 9.57,
                            "deg": 295.503
                        },
                        "rain": {
                            "3h": 0.685
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-07 09:00:00"
                    },
                    {
                        "dt": 1523102400,
                        "main": {
                            "temp": 36.98,
                            "temp_min": 36.98,
                            "temp_max": 36.98,
                            "pressure": 1010.31,
                            "sea_level": 1024.72,
                            "grnd_level": 1010.31,
                            "humidity": 72,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 88
                        },
                        "wind": {
                            "speed": 7.83,
                            "deg": 316.001
                        },
                        "rain": {
                            "3h": 0.24
                        },
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-07 12:00:00"
                    },
                    {
                        "dt": 1523113200,
                        "main": {
                            "temp": 37.73,
                            "temp_min": 37.73,
                            "temp_max": 37.73,
                            "pressure": 1012.04,
                            "sea_level": 1026.31,
                            "grnd_level": 1012.04,
                            "humidity": 53,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 804,
                                "main": "Clouds",
                                "description": "overcast clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 88
                        },
                        "wind": {
                            "speed": 8.08,
                            "deg": 324.501
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-07 15:00:00"
                    },
                    {
                        "dt": 1523124000,
                        "main": {
                            "temp": 41.3,
                            "temp_min": 41.3,
                            "temp_max": 41.3,
                            "pressure": 1011.35,
                            "sea_level": 1025.6,
                            "grnd_level": 1011.35,
                            "humidity": 48,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 80
                        },
                        "wind": {
                            "speed": 5.61,
                            "deg": 322.501
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-07 18:00:00"
                    },
                    {
                        "dt": 1523134800,
                        "main": {
                            "temp": 43.87,
                            "temp_min": 43.87,
                            "temp_max": 43.87,
                            "pressure": 1010.2,
                            "sea_level": 1024.41,
                            "grnd_level": 1010.2,
                            "humidity": 45,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 5.14,
                            "deg": 327.503
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-07 21:00:00"
                    },
                    {
                        "dt": 1523145600,
                        "main": {
                            "temp": 39.17,
                            "temp_min": 39.17,
                            "temp_max": 39.17,
                            "pressure": 1010.86,
                            "sea_level": 1025.14,
                            "grnd_level": 1010.86,
                            "humidity": 50,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 804,
                                "main": "Clouds",
                                "description": "overcast clouds",
                                "icon": "04n"
                            }
                        ],
                        "clouds": {
                            "all": 88
                        },
                        "wind": {
                            "speed": 5.19,
                            "deg": 339.506
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-08 00:00:00"
                    },
                    {
                        "dt": 1523156400,
                        "main": {
                            "temp": 35.34,
                            "temp_min": 35.34,
                            "temp_max": 35.34,
                            "pressure": 1011.9,
                            "sea_level": 1026.26,
                            "grnd_level": 1011.9,
                            "humidity": 53,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04n"
                            }
                        ],
                        "clouds": {
                            "all": 80
                        },
                        "wind": {
                            "speed": 5.88,
                            "deg": 355.501
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-08 03:00:00"
                    },
                    {
                        "dt": 1523167200,
                        "main": {
                            "temp": 31.96,
                            "temp_min": 31.96,
                            "temp_max": 31.96,
                            "pressure": 1011.46,
                            "sea_level": 1025.93,
                            "grnd_level": 1011.46,
                            "humidity": 56,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04n"
                            }
                        ],
                        "clouds": {
                            "all": 68
                        },
                        "wind": {
                            "speed": 6.51,
                            "deg": 2.00192
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-08 06:00:00"
                    },
                    {
                        "dt": 1523178000,
                        "main": {
                            "temp": 27.67,
                            "temp_min": 27.67,
                            "temp_max": 27.67,
                            "pressure": 1011.1,
                            "sea_level": 1025.71,
                            "grnd_level": 1011.1,
                            "humidity": 54,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01n"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 6.08,
                            "deg": 358.505
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-08 09:00:00"
                    },
                    {
                        "dt": 1523188800,
                        "main": {
                            "temp": 28.73,
                            "temp_min": 28.73,
                            "temp_max": 28.73,
                            "pressure": 1012.68,
                            "sea_level": 1027.26,
                            "grnd_level": 1012.68,
                            "humidity": 55,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01d"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 5.28,
                            "deg": 354.501
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-08 12:00:00"
                    },
                    {
                        "dt": 1523199600,
                        "main": {
                            "temp": 37.54,
                            "temp_min": 37.54,
                            "temp_max": 37.54,
                            "pressure": 1013.05,
                            "sea_level": 1027.41,
                            "grnd_level": 1013.05,
                            "humidity": 55,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01d"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 5.14,
                            "deg": 346.001
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-08 15:00:00"
                    },
                    {
                        "dt": 1523210400,
                        "main": {
                            "temp": 41.1,
                            "temp_min": 41.1,
                            "temp_max": 41.1,
                            "pressure": 1012.35,
                            "sea_level": 1026.61,
                            "grnd_level": 1012.35,
                            "humidity": 54,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 802,
                                "main": "Clouds",
                                "description": "scattered clouds",
                                "icon": "03d"
                            }
                        ],
                        "clouds": {
                            "all": 44
                        },
                        "wind": {
                            "speed": 5.41,
                            "deg": 302.001
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-08 18:00:00"
                    },
                    {
                        "dt": 1523221200,
                        "main": {
                            "temp": 40.67,
                            "temp_min": 40.67,
                            "temp_max": 40.67,
                            "pressure": 1012.79,
                            "sea_level": 1027.07,
                            "grnd_level": 1012.79,
                            "humidity": 49,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 802,
                                "main": "Clouds",
                                "description": "scattered clouds",
                                "icon": "03d"
                            }
                        ],
                        "clouds": {
                            "all": 44
                        },
                        "wind": {
                            "speed": 7.52,
                            "deg": 297.503
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-08 21:00:00"
                    },
                    {
                        "dt": 1523232000,
                        "main": {
                            "temp": 35.91,
                            "temp_min": 35.91,
                            "temp_max": 35.91,
                            "pressure": 1015.85,
                            "sea_level": 1030.32,
                            "grnd_level": 1015.85,
                            "humidity": 50,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 801,
                                "main": "Clouds",
                                "description": "few clouds",
                                "icon": "02n"
                            }
                        ],
                        "clouds": {
                            "all": 12
                        },
                        "wind": {
                            "speed": 6.6,
                            "deg": 306.001
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-09 00:00:00"
                    },
                    {
                        "dt": 1523242800,
                        "main": {
                            "temp": 30.68,
                            "temp_min": 30.68,
                            "temp_max": 30.68,
                            "pressure": 1018.79,
                            "sea_level": 1033.34,
                            "grnd_level": 1018.79,
                            "humidity": 54,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01n"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 5.61,
                            "deg": 340.003
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-09 03:00:00"
                    },
                    {
                        "dt": 1523253600,
                        "main": {
                            "temp": 27.11,
                            "temp_min": 27.11,
                            "temp_max": 27.11,
                            "pressure": 1020.83,
                            "sea_level": 1035.53,
                            "grnd_level": 1020.83,
                            "humidity": 59,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 801,
                                "main": "Clouds",
                                "description": "few clouds",
                                "icon": "02n"
                            }
                        ],
                        "clouds": {
                            "all": 12
                        },
                        "wind": {
                            "speed": 4.5,
                            "deg": 340.001
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-09 06:00:00"
                    },
                    {
                        "dt": 1523264400,
                        "main": {
                            "temp": 23.33,
                            "temp_min": 23.33,
                            "temp_max": 23.33,
                            "pressure": 1022.2,
                            "sea_level": 1036.97,
                            "grnd_level": 1022.2,
                            "humidity": 61,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 802,
                                "main": "Clouds",
                                "description": "scattered clouds",
                                "icon": "03n"
                            }
                        ],
                        "clouds": {
                            "all": 36
                        },
                        "wind": {
                            "speed": 2.62,
                            "deg": 336.001
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-09 09:00:00"
                    },
                    {
                        "dt": 1523275200,
                        "main": {
                            "temp": 29.09,
                            "temp_min": 29.09,
                            "temp_max": 29.09,
                            "pressure": 1023.72,
                            "sea_level": 1038.38,
                            "grnd_level": 1023.72,
                            "humidity": 57,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 804,
                                "main": "Clouds",
                                "description": "overcast clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 2.48,
                            "deg": 4.0004
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-09 12:00:00"
                    },
                    {
                        "dt": 1523286000,
                        "main": {
                            "temp": 35.5,
                            "temp_min": 35.5,
                            "temp_max": 35.5,
                            "pressure": 1024.58,
                            "sea_level": 1039.17,
                            "grnd_level": 1024.58,
                            "humidity": 58,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01d"
                            }
                        ],
                        "clouds": {
                            "all": 88
                        },
                        "wind": {
                            "speed": 3.38,
                            "deg": 85.0009
                        },
                        "rain": {},
                        "snow": {
                            "3h": 0.0044999999999999
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-09 15:00:00"
                    },
                    {
                        "dt": 1523296800,
                        "main": {
                            "temp": 37.79,
                            "temp_min": 37.79,
                            "temp_max": 37.79,
                            "pressure": 1023.94,
                            "sea_level": 1038.36,
                            "grnd_level": 1023.94,
                            "humidity": 58,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 600,
                                "main": "Snow",
                                "description": "light snow",
                                "icon": "13d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 3.49,
                            "deg": 162.501
                        },
                        "rain": {},
                        "snow": {
                            "3h": 0.045
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-09 18:00:00"
                    },
                    {
                        "dt": 1523307600,
                        "main": {
                            "temp": 38.62,
                            "temp_min": 38.62,
                            "temp_max": 38.62,
                            "pressure": 1022.33,
                            "sea_level": 1036.79,
                            "grnd_level": 1022.33,
                            "humidity": 60,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 76
                        },
                        "wind": {
                            "speed": 3.51,
                            "deg": 160.5
                        },
                        "rain": {
                            "3h": 0.055
                        },
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-09 21:00:00"
                    },
                    {
                        "dt": 1523318400,
                        "main": {
                            "temp": 35.36,
                            "temp_min": 35.36,
                            "temp_max": 35.36,
                            "pressure": 1021.83,
                            "sea_level": 1036.29,
                            "grnd_level": 1021.83,
                            "humidity": 65,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.5,
                            "deg": 133.502
                        },
                        "rain": {
                            "3h": 0.03
                        },
                        "snow": {
                            "3h": 0.015
                        },
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-10 00:00:00"
                    },
                    {
                        "dt": 1523329200,
                        "main": {
                            "temp": 33.48,
                            "temp_min": 33.48,
                            "temp_max": 33.48,
                            "pressure": 1021.84,
                            "sea_level": 1036.31,
                            "grnd_level": 1021.84,
                            "humidity": 76,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.14,
                            "deg": 130.001
                        },
                        "rain": {
                            "3h": 0.01
                        },
                        "snow": {
                            "3h": 0.2975
                        },
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-10 03:00:00"
                    },
                    {
                        "dt": 1523340000,
                        "main": {
                            "temp": 33,
                            "temp_min": 33,
                            "temp_max": 33,
                            "pressure": 1019.44,
                            "sea_level": 1033.87,
                            "grnd_level": 1019.44,
                            "humidity": 87,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 600,
                                "main": "Snow",
                                "description": "light snow",
                                "icon": "13n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.16,
                            "deg": 98.0034
                        },
                        "rain": {},
                        "snow": {
                            "3h": 1.0175
                        },
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-10 06:00:00"
                    },
                    {
                        "dt": 1523350800,
                        "main": {
                            "temp": 32.73,
                            "temp_min": 32.73,
                            "temp_max": 32.73,
                            "pressure": 1016.94,
                            "sea_level": 1031.4,
                            "grnd_level": 1016.94,
                            "humidity": 96,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 601,
                                "main": "Snow",
                                "description": "snow",
                                "icon": "13n"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.92,
                            "deg": 76.0005
                        },
                        "rain": {},
                        "snow": {
                            "3h": 2.16
                        },
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-10 09:00:00"
                    },
                    {
                        "dt": 1523361600,
                        "main": {
                            "temp": 33.17,
                            "temp_min": 33.17,
                            "temp_max": 33.17,
                            "pressure": 1014.49,
                            "sea_level": 1028.92,
                            "grnd_level": 1014.49,
                            "humidity": 96,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 6.17,
                            "deg": 59.0008
                        },
                        "rain": {
                            "3h": 0.22
                        },
                        "snow": {
                            "3h": 1.92
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 12:00:00"
                    },
                    {
                        "dt": 1523372400,
                        "main": {
                            "temp": 35.61,
                            "temp_min": 35.61,
                            "temp_max": 35.61,
                            "pressure": 1011.76,
                            "sea_level": 1025.97,
                            "grnd_level": 1011.76,
                            "humidity": 98,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.29,
                            "deg": 44.5038
                        },
                        "rain": {
                            "3h": 2.63
                        },
                        "snow": {
                            "3h": 0.6375
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 15:00:00"
                    },
                    {
                        "dt": 1523383200,
                        "main": {
                            "temp": 37.02,
                            "temp_min": 37.02,
                            "temp_max": 37.02,
                            "pressure": 1010.68,
                            "sea_level": 1024.9,
                            "grnd_level": 1010.68,
                            "humidity": 99,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.97,
                            "deg": 10.0001
                        },
                        "rain": {
                            "3h": 1.41
                        },
                        "snow": {
                            "3h": 0.017499999999999
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 18:00:00"
                    },
                    {
                        "dt": 1523394000,
                        "main": {
                            "temp": 39.35,
                            "temp_min": 39.35,
                            "temp_max": 39.35,
                            "pressure": 1009.69,
                            "sea_level": 1023.87,
                            "grnd_level": 1009.69,
                            "humidity": 91,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 68
                        },
                        "wind": {
                            "speed": 5.39,
                            "deg": 342.001
                        },
                        "rain": {
                            "3h": 0.31
                        },
                        "snow": {
                            "3h": 0.03
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 21:00:00"
                    },
                    {
                        "dt": 1523404800,
                        "main": {
                            "temp": 34.96,
                            "temp_min": 34.96,
                            "temp_max": 34.96,
                            "pressure": 1010.76,
                            "sea_level": 1024.96,
                            "grnd_level": 1010.76,
                            "humidity": 92,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 44
                        },
                        "wind": {
                            "speed": 3.71,
                            "deg": 298.501
                        },
                        "rain": {
                            "3h": 0.03
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 00:00:00"
                    },
                    {
                        "dt": 1523415600,
                        "main": {
                            "temp": 35.2,
                            "temp_min": 35.2,
                            "temp_max": 35.2,
                            "pressure": 1012.86,
                            "sea_level": 1027.21,
                            "grnd_level": 1012.86,
                            "humidity": 93,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 7.4,
                            "deg": 298
                        },
                        "rain": {
                            "3h": 0.25
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 03:00:00"
                    },
                    {
                        "dt": 1523426400,
                        "main": {
                            "temp": 31.02,
                            "temp_min": 31.02,
                            "temp_max": 31.02,
                            "pressure": 1013.83,
                            "sea_level": 1028.35,
                            "grnd_level": 1013.83,
                            "humidity": 80,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01n"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 7.99,
                            "deg": 300.504
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 06:00:00"
                    },
                    {
                        "dt": 1523437200,
                        "main": {
                            "temp": 28.83,
                            "temp_min": 28.83,
                            "temp_max": 28.83,
                            "pressure": 1015.22,
                            "sea_level": 1029.78,
                            "grnd_level": 1015.22,
                            "humidity": 82,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 800,
                                "main": "Clear",
                                "description": "clear sky",
                                "icon": "01n"
                            }
                        ],
                        "clouds": {
                            "all": 0
                        },
                        "wind": {
                            "speed": 7.4,
                            "deg": 295.009
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 09:00:00"
                    }
                ],
                "city": {
                    "id": 420026433,
                    "name": "Elizabeth",
                    "coord": {
                        "lat": 40.6704,
                        "lon": -74.4274
                    },
                    "country": "US"
                }
            }
        """.data(using: .utf8)!
        
    }
    func getSmallerJSON() -> Data {
        
        return """
                {
                "cod": "200",
                "message": 0.0049,
                "cnt": 40,
                "list": [
                    {
                        "dt": 1523016000,
                        "main": {
                            "temp": 36.28,
                            "temp_min": 31.71,
                            "temp_max": 36.28,
                            "pressure": 1019.02,
                            "sea_level": 1033.5,
                            "grnd_level": 1019.02,
                            "humidity": 70,
                            "temp_kf": 2.54
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 80
                        },
                        "wind": {
                            "speed": 3.98,
                            "deg": 162.505
                        },
                        "rain": {
                            "3h": 0.015
                        },
                        "snow": {
                            "3h": 0.4285
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 12:00:00"
                    },
                    {
                        "dt": 1523026800,
                        "main": {
                            "temp": 41.77,
                            "temp_min": 38.35,
                            "temp_max": 41.77,
                            "pressure": 1015.02,
                            "sea_level": 1029.35,
                            "grnd_level": 1015.02,
                            "humidity": 87,
                            "temp_kf": 1.9
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.02,
                            "deg": 156.002
                        },
                        "rain": {
                            "3h": 0.2025
                        },
                        "snow": {
                            "3h": 0.727
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 15:00:00"
                    },
                    {
                        "dt": 1523037600,
                        "main": {
                            "temp": 54.36,
                            "temp_min": 52.07,
                            "temp_max": 54.36,
                            "pressure": 1009.03,
                            "sea_level": 1023.19,
                            "grnd_level": 1009.03,
                            "humidity": 64,
                            "temp_kf": 1.27
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 10.31,
                            "deg": 214.002
                        },
                        "rain": {
                            "3h": 0.0725
                        },
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 18:00:00"
                    },
                    {
                        "dt": 1523048400,
                        "main": {
                            "temp": 56.12,
                            "temp_min": 54.98,
                            "temp_max": 56.12,
                            "pressure": 1006.14,
                            "sea_level": 1019.88,
                            "grnd_level": 1006.14,
                            "humidity": 55,
                            "temp_kf": 0.63
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 11.25,
                            "deg": 229
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 21:00:00"
                    },
                    {
                        "dt": 1523372400,
                        "main": {
                            "temp": 35.61,
                            "temp_min": 35.61,
                            "temp_max": 35.61,
                            "pressure": 1011.76,
                            "sea_level": 1025.97,
                            "grnd_level": 1011.76,
                            "humidity": 98,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.29,
                            "deg": 44.5038
                        },
                        "rain": {
                            "3h": 2.63
                        },
                        "snow": {
                            "3h": 0.6375
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 15:00:00"
                    },
                    {
                        "dt": 1523383200,
                        "main": {
                            "temp": 37.02,
                            "temp_min": 37.02,
                            "temp_max": 37.02,
                            "pressure": 1010.68,
                            "sea_level": 1024.9,
                            "grnd_level": 1010.68,
                            "humidity": 99,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.97,
                            "deg": 10.0001
                        },
                        "rain": {
                            "3h": 1.41
                        },
                        "snow": {
                            "3h": 0.017499999999999
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 18:00:00"
                    },
                    {
                        "dt": 1523394000,
                        "main": {
                            "temp": 39.35,
                            "temp_min": 39.35,
                            "temp_max": 39.35,
                            "pressure": 1009.69,
                            "sea_level": 1023.87,
                            "grnd_level": 1009.69,
                            "humidity": 91,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 68
                        },
                        "wind": {
                            "speed": 5.39,
                            "deg": 342.001
                        },
                        "rain": {
                            "3h": 0.31
                        },
                        "snow": {
                            "3h": 0.03
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 21:00:00"
                    },
                    {
                        "dt": 1523404800,
                        "main": {
                            "temp": 34.96,
                            "temp_min": 34.96,
                            "temp_max": 34.96,
                            "pressure": 1010.76,
                            "sea_level": 1024.96,
                            "grnd_level": 1010.76,
                            "humidity": 92,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 44
                        },
                        "wind": {
                            "speed": 3.71,
                            "deg": 298.501
                        },
                        "rain": {
                            "3h": 0.03
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 00:00:00"
                    }
                ],
                "city": {
                    "id": 420026433,
                    "name": "Elizabeth",
                    "coord": {
                        "lat": 40.6704,
                        "lon": -74.4274
                    },
                    "country": "US"
                }
            }
        """.data(using: .utf8)!
        
    }
}
