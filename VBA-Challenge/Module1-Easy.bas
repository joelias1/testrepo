Attribute VB_Name = "Module1"
Sub TickerStockloop()
    
   'Setting up Definition
    
    For Each ws In Worksheets

    Dim Ticker As String
    
    Dim Volume As Double
    Volume = 0
    
  
    'Setting up table headers
    ws.Cells(1, 9).Value = "Ticker"
  
    ws.Cells(1, 10).Value = "Total Stock Volume"
    
    'Setting up to loop integer
    Dim Ticker_Table_Row As Integer
    
    Ticker_Table_Row = 2
    
    Cell_range = Cells(Rows.Count, 1).End(xlUp).Row
    
    'loop command
    
    For i = 2 To Cell_range
        
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
        
        Ticker = Cells(i, 1).Value
        
        Volume = Volume + ws.Cells(i, 7).Value
        
        'Setting value in summary table
        ws.Cells(Ticker_Table_Row, 9) = Ticker
        ws.Cells(Ticker_Table_Row, 10) = Volume
       
        
                 
        
        Ticker_Table_Row = Ticker_Table_Row + 1
        
        Volume = 0
        
    
        
        Else
        
        Volume = Volume + ws.Cells(i, 7).Value
        
        
        
        End If
    Next i
        
       
    
    
    Next ws


End Sub
