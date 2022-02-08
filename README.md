# Matrix Calculator
## Description
![圖片參考名稱](https://github.com/cycu10627135/Matrix-Calculator/blob/master/Matrix_Calculator.PNG "description")
用YACC為一個**matrix expression compiler**編寫syntax和sematic checker。  
所有輸入的矩陣都是二維矩陣，表示為 [column number , row number]。  
例如:  
[2,3]為一個2x3的矩陣、[5,1]為一個2x3的矩陣。  
  
這個compiler支持且可辨識、執行的幾個operator:  
加法‘+’，減法‘-’，乘法‘*’，轉置‘^T’，括號‘()’。  
因此，本題該處理的

  
### 參考答案
| Sample Input  | Sample Output |
|-------|:-----:|
| [2,1]^T\*[2,1] | Accepted |
| ([2,3]\*[2,3]^T)^T+[4,1] | Semantic error on col 19 |
| ([1,2]+[2,1]^T)\*[1,3]\*[1,3]^T\*[3,3]| Semantic error on col 16 |
| (([2,3]^T)^T)^T + [2,3]^T | Accepted |


