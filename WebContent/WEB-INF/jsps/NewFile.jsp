<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body>
	
	<div class="col-md-2"></div>
    <div class="col-md-9" style="margin-top: 30px; background: #E6E6E6">
    
    <div class="panel panel-default col-md-12" style="background: #E2EEDE" >
        
    <h2>Payment Deposit Voucher </h2> 
    </div>
         
        <div class="col-md-12">
        <div class="panel panel-body">                
        <div class="form-group">    
        <div class="col-md-4">
            <input type="radio" class="voucher" name="voucher" value="1" checked="checked">Payment Voucher 
            <input type="radio" name="voucher" class="voucher" value="2">Receive Voucher
        </div>
            </div>
           
        <div class="col-md-6">
            <div class="col-md-1">
            <label>Vno</label>
            </div>
            <div class="col-md-5">
            <input class="form-control" type="text" name="voucherid" id="voucherid">
            </div>
            <div class="col-md-1">
            <label>Date</label>
            </div>
            <div class="col-md-5">
            <input class="form-control" type="text" name="date" id="date">
            </div>
            
            </div>
            
        
        <div class="col-md-2">
        <input type="radio" name="transaction" class="transaction" value="1" checked="checked">Cash 
        <input type="radio" name="transaction" class="transaction" value="2">Bank
        </div>    
            </div>         
        </div>
        
        <div class="panel-body">
            <div class="col-md-12">
            
            <div class="col-md-2" style="padding-bottom: 5px">
            <label>Project : </label></div>
            <div class="col-md-10" id="projectdiv"></div>
           
            </div>
            
            <div class="col-md-12">
            
            <div class="col-md-2" style="align-content: right">
                <label>Department : </label></div>
            <div class="col-md-4">
				<select name="department" class="form-control" id="department">
				    <option value="">Select...</option>
				    <option value="SWE">SWE</option>
				    <option value="CSE">CSE</option>
				    <option value="EEE">EEE</option>
                </select>
				</div>
				
            
            
            <div class="col-md-2" style="text-align: right;">
            <label>Cash in Hand : </label></div>
            <div class="col-md-4">
			<input type="text" class="form-control" name="cashinhand" id="cashinhand">
				</div>
				
            	</div>
            
            <div class="col-md-12">
            
            <div class="col-sm-2" style="padding: 5px">
            <label>Bank Account :</label></div>
            <div class="col-sm-10" id="bankaccdiv"></div>
            </div>
            
            <div class="col-md-12">
                
                
                <div class="col-md-2" >
				<label>Cheque No: </label></div>
				<div class="col-md-4">
				<input type="text" class="form-control" name="chequeno" id="chequeno"></div>

				
				<div class="col-md-2">
				<label>MR. No :</label></div>
				<div class="col-md-4">
				<input type="text" class="form-control" name="mrno" id="mrno"></div>

            </div>
            
            <div class="col-md-12">
            <div class="form-group">
                <div class="col-sm-2">
				<label>Control Head : </label></div>
				<div class="col-sm-10" id="controllheaddiv"></div>
            </div>
            </div>
            
             <div class="col-md-12">
                 
				<div class="col-md-2">
                    <label>Amount</label></div>
				<div class="col-md-10">
				<input type="text" class="form-control" name="amount" id="amount">
				</div>
        </div>
        
            <div class="col-md-12">
            <input type="submit" value="Add" name="add" id="add" class="btn btn-lg btn-success col-md-offset-5 col-md-3">
            </div>
                 
        </div>
        
        <div class="col-md-12">
        
			<div class="panel panel-body">
					<table class="table" id="showtable">
					<thead>
						<tr>
							<th>ACCOUNT HEAD</th>
							<th>DEBIT</th>
							<th>CREDIT</th>
							<th>CHEQUE</th>
							<th>PROJECT NAME</th>
							<th>MR.NO</th>
							<th>DEPT NAME</th>
						</tr>
						</thead>
					</table>
                    </div>
            </div>
        
        <div class="col-md-12">
        <div class="panel-body">
            <div class="col-md-3"></div>
            <div class="col-md-3">
            <input type="text" class="form-control" name="debitbal" id="debitbal">
            </div>
            <div class="col-md-3">
            <input type="text" class="form-control" name="creditbal" id="creditbal">
            </div>
            <div class="col-md-3"></div>
        </div>
        </div>
        
        <div class="col-md-12">
        <div class="panel panel-body">
        <div class="col-sm-2">
        <label>Narration: </label></div>
        <div class="col-sm-10">
		<input type="text" class="form-control" name="narration"
						id="narration" class="col-sm-10">
		</div>
            
        </div>
        </div>
        
        <div class="col-md-12">
        <div class="panel panel-body">
            
        <div class="col-sm-5"></div>
        <div class="col-sm-1">
        <input type="submit" class="btn btn-danger" name="clear" value="CLEAR" id="clear">
        </div>
        <div class="col-sm-3">
        <input type="submit" name="save" value="SAVE"
        class="btn btn-success" id="save">
        </div>
        <div class="col-sm-3"></div>
        </div>
        </div>
        
        <div class="col-md-12">
        <div class="panel panel-body" style="background-color: green">
            
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
        <input type="text" name="search" class="form-control" id="search" placeholder="SEARCH" class="col-sm-12">
        </div>
        <div class="col-sm-4"></div>
            
        </div>
        </div>
        
        <div class="col-md-12">
        <div class="panel panel-body">
        
        <div class="showtable">
            <table class="table">
				<tr>
				<th>VOUCHER NO</th>
				<th>VOUCHER DATE</th>
				<th>VOUCHER AMMOUNT</th>
				<th>STATUS</th>
				</tr>
            </table>
        </div>
        </div>
        </div>
        
        <div class="col-md-12">
        <div class="panel panel-body" style="background-color: black">
            
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
        <h4>&copy;Moshiur Rahman</h4>
		</div>
        <div class="col-sm-4"></div>
            
        </div>
        </div>
        
        
        
    </div>
    <div class="col-md-1"></div>

</body>
</html>