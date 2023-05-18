SELECT n.id, n.loannumber, n.borrowername, n.borroweraddress, n.borrowercity, n.borrowerstate, n.borrowerzip, n.loanstatusdate, n.loanstatus, n.initialapprovalamount, n.currentapprovalamount, n.currentapprovalamount, n.servicinglendername, n.hubzoneindicator, n.businessagedescription, n.jobsreported, n.naicscode, n.lmiindicator, n.businesstype, n.forgivenessamount, n.forgivenessdate FROM ny_150k_1 n
WHERE (borrowercity LIKE 'Bronx' AND loanstatus LIKE 'Paid in Full' AND processingmethod = 'PPP')
AND (borrowerzip LIKE '%10474%' OR borrowerzip LIKE '%10454%' OR borrowerzip LIKE '%10451%' OR borrowerzip LIKE '%10452%' 
	 OR borrowerzip LIKE '%10455%')
AND (jobsreported > 4)
AND (forgivenessamount > 25000)
AND (businesstype != 'Non-Profit Organization' OR businesstype != '501(c)3 - Non Profit' OR nonprofit != 'Y')
AND (businessagedescription = 'Existing or more than 2 years old')
OR (borrowercity LIKE 'BX' AND loanstatus = 'Paid in Full' AND processingmethod = 'PPP')
AND (borrowerzip LIKE '%10474%' OR borrowerzip LIKE '%10454%' OR borrowerzip LIKE '%10451%' OR borrowerzip LIKE '%10452%' 
	 OR borrowerzip LIKE '%10455%')
AND (jobsreported > 4)
AND (forgivenessamount > 25000)
AND (businesstype != 'Non-Profit Organization' OR businesstype != '501(c)3 - Non Profit' OR nonprofit != 'Y')
AND (businessagedescription = 'Existing or more than 2 years old')
ORDER BY n.id ASC;