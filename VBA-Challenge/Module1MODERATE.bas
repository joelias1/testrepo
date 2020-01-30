Attribute VB_Name = "Module1"
Sub TickerStockloop()

    'Setting up Definition
    
    For Each ws In Worksheets
    
   
    Dim Ticker As String
    
    Dim Volume As Double
    Volume = 0
        
    'Setting up for the calculation
    Dim percent_change As Double
    
    Dim yearly_change As Double
    
    Dim price_open As Double
    price_open = ws.Cells(2, 3).Value
    
    Dim price_close As Double
    
  
    'Setting up table headers
    ws.Cells(1, 9).Value = "Ticker"
    ws.Cells(1, 10).Value = "Yearly Change"
    ws.Cells(1, 11).Value = "Percent Change"
    ws.Cells(1, 12).Value = "Total Stock Volume"
    
    'Setting up to loop integer
    Dim Ticker_Table_Row As Integer
    
    Ticker_Table_Row = 2
    
    Cell_range = Cells(Rows.Count, 1).End(xlUp).Row
    
    'loop command
    For i = 2 To Cell_range
        
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
        
        Ticker = Cells(i, 1).Value
        
        Volume = Volume + ws.Cells(i, 7).Value
        
        'Setting value in table
        ws.Cells(Ticker_Table_Row, 9) = Ticker
        ws.Cells(Ticker_Table_Row, 12) = Volume
       
        price_close = ws.Cells(i, 6).Value
        
        yearly_change = (price_close - price_open)
        
        
        If price_open = 0 Then
            
            percent_change = 0
        
        Else
            percent_change = (price_close - price_open) / price_open
        
        End If
        
        'Setting value in table
        ws.Cells(Ticker_Table_Row, 10) = yearly_change
        
        ws.Cells(Ticker_Table_Row, 11) = percent_change
                 
        
        Ticker_Table_Row = Ticker_Table_Row + 1
        
        Volume = 0
        
    
        
        price_open = ws.Cells(i + 1, 3)
        
        Else
        
        Volume = Volume + ws.Cells(i, 7).Value
        
        End If
    Next i
        
       
    Color_range = Cells(Rows.Count, 9).End(xlUp).Row
    
        For c = 2 To Color_range
            
            If Cells(c, 10).Value > 0 Then
                Cells(c, 10).Interior.ColorIndex = 10
            Else
                Cells(c, 10).Interior.ColorIndex = 3
            End If
        
        Next c
    
    Next ws
End Sub
