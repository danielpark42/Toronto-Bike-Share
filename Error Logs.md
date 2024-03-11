# Error Log History

## 2024-03-10: Python Script Errors

### The error found while compiling my python script. Need to change data type to varchar(50) for trip_id
  ERROR:  value "10000084625" is out of range for type integer       
  CONTEXT:  COPY bikeshare, line 25642, column trip_id: "10000084625"

### Some entries where the unique constraint is violated. Will ignore for now and see where it went wrong later. Need to resolve the errors so we can at least collect the clean data from the file. 
### Errors means the code doesn't execute for the file, thus skipped.
  PS C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share> python data_import_iterate.py
  PS C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share> python data_import_itera
  COPY 196224
  COPY 370471
  COPY 458884
  COPY 494468
  COPY 440662
  ERROR:  invalid input syntax for type timestamp: "Gerrard St E / River St"
  CONTEXT:  COPY bikeshare, line 25642, column start_time: "Gerrard St E / River St"
  COPY 203256
  COPY 95348
  COPY 86371
  ERROR:  duplicate key value violates unique constraint "bikeshare_trip_id_key"
  DETAIL:  Key (trip_id)=(10756846) already exists.
  CONTEXT:  COPY bikeshare, line 6189
  ERROR:  duplicate key value violates unique constraint "bikeshare_trip_id_key"
  DETAIL:  Key (trip_id)=(10909571) already exists.
  CONTEXT:  COPY bikeshare, line 68377
  ERROR:  duplicate key value violates unique constraint "bikeshare_trip_id_key"
  DETAIL:  Key (trip_id)=(11180718) already exists.
  CONTEXT:  COPY bikeshare, line 140294
  COPY 424023
  ERROR:  duplicate key value violates unique constraint "bikeshare_trip_id_key"
  DETAIL:  Key (trip_id)=(12272296) already exists.
  CONTEXT:  COPY bikeshare, line 438637
  COPY 463910
  COPY 496943
  COPY 454788
  COPY 367148
  COPY 242928
  COPY 145849
  COPY 56765
  COPY 67010
  COPY 151938
  COPY 245920
  COPY 504926
  COPY 605645
  COPY 680308
  COPY 705150
  COPY 602817
  COPY 499751
  COPY 320229
  COPY 180010
  COPY 180135
  COPY 172776
  COPY 224545
  COPY 380346
  COPY 589217
  COPY 663691
  COPY 735924
  COPY 760141
  COPY 754303
  COPY 601075
  COPY 393873
  COPY 257115
  COPY 204870
  COPY 189063
  COPY 651685
  COPY 1130353
  COPY 468416
  COPY 102148
  COPY 95183
  COPY 105046
  COPY 71779

  ### A print statement was included so that we can locate which files have errors, also this was after unique constraint was removed from the PostgreSQL table 'bikeshare'
  PS C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share> python data_import_itera
  COPY 196224
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 370471
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 458884
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 494468
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 440662
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  ERROR:  invalid input syntax for type timestamp: "Gerrard St E / River St"
  CONTEXT:  COPY bikeshare, line 25642, column start_time: "Gerrard St E / River St"
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 203256
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 95348
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 86371
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 58879
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 157397
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 224299
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 424023
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 452647
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 463910
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 496943
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 454788
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 367148
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 242928
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 145849
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 56765
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 67010
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 151938
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 245920
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 504926
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 605645
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 680308
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 705150
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 602817
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 499751
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 320229
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 180010
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 180135
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 172776
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 224545
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 380346
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 589217
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 663691
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 735924
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 760141
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 754303
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  COPY 601075
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-201
  2019-2024\2019-Q1.csv
  COPY 651685                                                                                   201
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2019-Q2.csv
  COPY 1130353
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2019-Q3.csv
  COPY 468416
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2019-Q4.csv
  COPY 102148
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2020-01.csv
  COPY 95183
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2020-02.csv
  COPY 105046
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2020-03.csv
  COPY 71779
  C:\Users\danie\OneDrive\Desktop\Data - Work Stuff\Toronto Bike Share\data\bikeshare-ridership-2019-2024\2020-04.csv
