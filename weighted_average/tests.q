path_to_test_data: `:/<path_to_project>/weighted_average/sample_data_test.txt

vwap_test_1:{
  path: path_to_test_data;
  start: 2023.07.01;
  end: 2023.09.01;
  expected: `pound`dollar`euro`yen`franc ! (23%7; 1; 20.5%10; 1; 7%3);
  actual: vwap[path;start;end];
  test_succesful: all {abs[x]<=1e-7} expected - actual;
  $[test_succesful; [show "vwap_test_1 sucesfull"]; [show "vwap_test_1 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
vwap_test_2:{
  path: path_to_test_data;
  start: 2023.07.24;
  end: 2023.09.01;
  expected: `pound`dollar`euro`yen`franc ! (0n; 0n; 19%9; 1; 7%3);
  actual: vwap[path;start;end];
  test_succesful: all {abs[x]<=1e-7} expected - actual;
  $[test_succesful; [show "vwap_test_2 sucesfull"]; [show "vwap_test_2 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
vwap_test_3:{
  path: path_to_test_data;
  start: 2024.07.01;
  end: 2024.09.01;
  expected: `pound`dollar`euro`yen`franc ! (0n; 0n; 0n; 0n; 0n);
  actual: vwap[path;start;end];
  test_succesful: all {abs[x]<=1e-7} expected - actual;
  $[test_succesful; [show "vwap_test_3 sucesfull"]; [show "vwap_test_3 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
twap_test_1:{
  path: path_to_test_data;
  start: 2023.07.01;
  end: 2023.09.01;
  expected: `pound`dollar`euro`yen`franc ! (13%4; 0; 4.3%2; 1; 9%7);
  actual: twap[path;start;end];
  test_succesful: all {abs[x]<=1e-7} expected - actual;
  $[test_succesful; [show "twap_test_1 sucesfull"]; [show "twap_test_1 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
twap_test_2:{
  path: path_to_test_data;
  start: 2023.07.24;
  end: 2023.09.01;
  expected: `pound`dollar`euro`yen`franc ! (0n; 0n; 2.2; 1; 9%7);
  actual: twap[path;start;end];
  test_succesful: all {abs[x]<=1e-10} expected - actual;
  $[test_succesful; [show "twap_test_2 sucesfull"]; [show "twap_test_2 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
twap_test_3:{
  path: path_to_test_data;
  start: 2024.07.01;
  end: 2024.09.01;
  expected: `pound`dollar`euro`yen`franc ! (0n; 0n; 0n; 0n; 0n);
  actual: vwap[path;start;end];
  test_succesful: all {abs[x]<=1e-7} expected - actual;
  $[test_succesful; [show "twap_test_3 sucesfull"]; [show "twap_test_3 failed"; show "expected: "; show expected; show "actual: "; show actual;]];
  test_succesful}
  
run_all_tests:{
  all (vwap_test_1[]; vwap_test_2[]; vwap_test_3[]; twap_test_1[]; twap_test_2[]; twap_test_3[])}