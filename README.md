# Matrix Calculator
## Description
![圖片參考名稱](https://github.com/cycu10627135/Matrix-Calculator/blob/master/Matrix_Calculator.PNG "description")
用YACC為一個**matrix expression compiler**編寫syntax和sematic checker。  
  
所有輸入的矩陣都是二維矩陣，表示為 [column number , row number]。  
例如:  
[2,3]為一個2x3的矩陣、[5,1]為一個2x3的矩陣。  
  
這個compiler支持且可辨識、執行的幾個operator:  
**加法‘+’，減法‘-’，乘法‘*’，轉置‘^T’，括號‘()’。**  
  
因此，本題應該達成的目的有兩個部分。  
第一，檢查輸入的表達式符不符合語法，如果不符合則輸出“Syntax Error”。  
第二，如果表達式符合語法，則進行sematic check，看看每個operator兩側的矩陣維度是否正確。  
例如:  
[1,2]\*[2,1]是符合文法的，他會產生一個[1,1]\(1x1的矩陣\)。  
但[1,2]\+[2,1]不符合文法，因為兩個維度不同的矩陣沒辦法做矩陣加法。  
同理，[2,3]^T\*[2,4]是符合，因為對[2,3]矩陣進行轉置之後。
如果表達是完全正確，就輸出“Accepted”；如果不正確則輸出“Sematic error on col ◎”，◎為出錯的operator在表達式中的位置。  
  
  
### 參考答案
| Sample Input  | Sample Output |
|-------|:-----:|
| [2,1]^T\*[2,1] | Accepted |
| ([2,3]\*[2,3]^T)^T+[4,1] | Semantic error on col 19 |
| ([1,2]+[2,1]^T)\*[1,3]\*[1,3]^T\*[3,3]| Semantic error on col 16 |
| (([2,3]^T)^T)^T + [2,3]^T | Accepted |


