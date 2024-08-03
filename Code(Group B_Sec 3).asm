# COMPUTER ARCHITECTURE AND ASSEMBLY LANGUAGE
# SECTION 3
# GROUP PROJECT
# GROUP B
# PROJECT TITLE : 
#	 Parcel delivery alert app (Ola Delivery)
# FROUP MEMBER NAME: 
#	 Khaleeda Zahra binti Zulkiffli (1913334)
# 	 Nur Qhaisara binti Mohd Zakzam (1913074)
# 	 Nur syafiqah binti Zakaria (1914770)
#	 Ahmad Zulfakar bin Abd Aziz (1812629)

# How code works
# 1. Load the base address of custDetails to the register.
# 2. Load the data of 4 customers to the register
#    and Store the data of 4 customers from the register to the memory.
# 3. Display welcoming message and display either staff or customer.
# 4. Get users role whether staff or costumer (S/C).
# 5. Display customer registration page.
# 6. Initialization for customer name .
# 7. Prompt the customer for name.	
# 8. Get the customer name.
# 9. Store pointer to name into array.
# 10. Initialization for customer address. 
# 11. Prompt the customer for address.
# 12. Get the customer address.
# 13. Store pointer to address into array.
# 14. Prompt the customer for phone number.
# 15. Get the customer phone number.  
# 16. Jump to Customer name
# 17. Display \n	
# 18. Initialization for customer username. 
# 19. Prompt the customer for username.
# 20. Get the customer username.
# 21. Store pointer to username into array.
# 22. Initialization for customer password. 
# 23. Prompt the customer for password.
# 24. Get the customer password.
# 25. Store pointer to password into array.
# 26. Display customer login page. 
# 27. Get customer username.
# 28. Input validation for customer username.
# 29. If customer username valid, proceed to customer password	.
# 30. Input validation for customer password.
# 31. Display customer hompage.	
# 32. Display a question to ask about customer's presence whether he/she is at home or not.
# 33. Confirmation on customer's presence whether he/she is at home or not.
# 34. Display a message to perform a scan QR code.
# 35. Get input to perform QR code scanning.	
# 36. Display scanning message.
# 37. Display status scanning message.	
# 38. Display nearest store message.
# 39. Validation on confirming the parcel has been received or will be sent to the nearest store.
# 40. Display successful message. 
# 41. Display Thank You message	 for customer.
# 42. Display customer logout page.
# 43. Display customer exit page.
# 44. Display staff registration page.	
# 45. Initialization for staff name. 	
# 46. Prompt the user for staff name.
# 47. Get the staff name.
# 48. Store pointer to staff name into array.
# 49. Prompt the user for staff phone number.
# 50. Get the staff phone number.
# 51. Jump to staff username name
# 52. print \n
# 53. Initialization for staff username. 		
# 54. Prompt the user for staff username.
# 55. Get the staff username.
# 56. Store pointer to staff username into array.
# 57. Initialization for staff password. 
# 58. Prompt the user for staff password.
# 59. Get the staff password.
# 60. Store pointer to staff password into array.
# 61. Display staff login page.	
# 62. Get staff username.	
# 63. Input validation for username.
# 64. If staff username valid, proceed to staff password.	
# 65. Input validation for password.
# 66. Display staff homepage. 		
# 67. Display message to select the parcels to be delivered based on the 'NO.' in the list.
# 68. Display the "Enter the NO. chosen:" message.
# 69. Get input to select the No.
# 70. Compare and update the new parcels details list
#     and do input validation.
# 71. Display error message.
# 72. Compare and check if the parcel is already arrived at the customer's address or not.
# 73. Display a message that the parcel is already arrived at the customer's address.
# 74. Update the status of the customer's parcel.
# 75. Display "Press Y to select more parcels / Press N to exit." message for the user to make the decision.
# 76. Get input to the user's decision.	
# 77. Compare the user's decision for the next action.
# 78. Display a message that the parcel is out for delivery.
# 79. Display error message.
# 80. Display a message to perform a voice recognition.
# 81. Get input to perform the voice recognition.
# 82. Display the message that the user is talking.
# 83. Display the message "Done. Here is the updated database.
# 84. Display the updated parcels details list.
# 85. Display "Notification is sent to the customer." message.
# 86. Display a message to the customer upon the arrival of the delivery guy.
# 87. Display link information form.
# 88. Get user input to information form.	
# 89. Display link information form.	
# 90. Display name message and get the customer name.	
# 91. Validation for maisrah's name.
# 92. Validation for danish's name.	
# 93. Validation for aisyah's name.		
# 94. Validation for Faris's name.
# 95. Display errorsound message and give alert by producing a sound.
# 96. Display phone number message and get the customer phone number	
# 97. Validation for Maisarah's phone number.
# 98. Validation for Danish's phone number.			
# 99. Validation for Aisyah's phone number.
# 100. Validation for Faris's phone number.
# 101. Display parcel arrival message.	
# 102. Display staff logout account.  	
# 103. Display staff exit program.	
# 104. End program.	


.data
phoneno:			.word  12
details: 			.space 100
custDetails:			.space  16
inputUsernameLogin:		.space  100
inputPasswordLogin:		.space  100

variableNameCustomer:		.space  100
variablePhoneNumberCustomer:	.space  100

array6:				.space  100
array7:				.space  200
array8:				.space  100
array9:				.space  100
array10:			.space  100
customerNameArray:		.space  100
customerAddressArray:		.space  100
customerPhoneNumberArray: 	.space  100
customerUsernameArray:  	.space  2000
customerPasswordArray:  	.space  2000

array1:     			.space  100
array2:				.space  100
array3:				.space  100
array5:				.space  100
staffNameArray:			.space  100
staffPhoneNumberArray:		.space  100
staffUsernameArray:    		.space  20000   
staffPasswordArray:		.space  20000

variable1:			.space	2
variable2:			.space  1

staff:				.asciiz "\n\n STAFF"
staffHomepage:			.asciiz "\n STAFF HOMEPAGE \n PARCELS INFORMATION"

customer:			.asciiz "\n\n CUSTOMER"
CustomerHomepage:		.asciiz "\n\n CUSTOMER HOMEPAGE"

n:				.asciiz "\n"    
welcomeMessage: 		.asciiz "\n\n\n Ola Delivery \n Parcel Delivery alert app\n\n Press S for Staff \t Press C for Customer: "
exitMessage:			.asciiz "\n\n Do you want to exit the programme? : "
diplayRegistrationpage:		.asciiz "\n REGISTRATION PAGE "
displayLoginPage:		.asciiz "\n LOGIN PAGE "
username:     			.asciiz "\n USERNAME: "
password:			.asciiz "\n PASSWORD: "
name:				.asciiz "\n NAME: "
address:			.asciiz "\n ADDRESS: "
phoneNumber:			.asciiz "\n phone number (e.g. : 0114567743) : "
wrongInput:			.asciiz "\n WRONG INPUT! Please try again: "
wrongUsername:			.asciiz "\n WRONG USERNAME!"
wrongPassword:			.asciiz "\n WRONG PASSWORD!"
logout:				.asciiz "\n Do you want to logout? : "

detailsMaisarah:		.asciiz	" 1.	Nik Maisarah	D-214, lorong Harmoni 8,		1		AA128446533BB		Document	not delivered		  	-		0125643121\n"
maisarahAdd1:			.asciiz	"			Taman Harmoni, Gong Badak,\n"
maisarahAdd2:			.asciiz	"			20050, Kuala Terengganu,\n"
maisarahAdd3:			.asciiz	"			Terengganu.\n"
detailsDanish:			.asciiz	" 2.	Danish Haikal	No. 20, Jalan melur 7,			2		MB576664138KL		Document	not delivered		  	-		0135454622\n"
danishAdd1:			.asciiz	"			Taman Bandar Connaught,					BM456213008AB		Parcel\n"
danishAdd2:			.asciiz	"			56000 Cheras,\n"
danishAdd3:			.asciiz	"			Kuala Lumpur.\n"
detailsAisyah:			.asciiz	" 3.	Nur Aisyah	E-31, Kampung Paloh Sekolah,		1		AC997681486NI		Parcel		not delivered		  	-		0132564773\n"
aisyahAdd1:			.asciiz	"			20050, Kuala Terengganu,\n"
aisyahAdd2:			.asciiz	"			Kuala Terengganu.\n"
detailsFaris:			.asciiz	" 4.	Faris		No. 11, Jalan Kenari,			3		DD310500467KT		Parcel		not delievered		  	-		0193354424\n"
farisAdd1:			.asciiz	"			Taman Kenari,						KN645553233LM		Parcel\n"
farisAdd2:			.asciiz	"			43000 Kajang,						CB454563251PM		Document\n"
farisAdd3:			.asciiz	"			Selangor.\n"

selectParcelNum:		.asciiz	"\n Select the parcels to be delivered based on the 'NO. on the list."
parcelNum:			.asciiz	"\n Enter the NO. chosen: "
wrgParcelNum:			.asciiz	"\n The No. is not in the list."
arrivedMsg:			.asciiz	"\n The parcel is already arrived at the customer's address.\n"
outDeliveryMaisarah:		.asciiz	" 1.	Nik Maisarah	D-214, lorong Harmoni 8,		1		AA128446533BB		Document	OUT FOR DELIVERY	  	-		0125643121\n"
outDeliveryDanish:		.asciiz	" 2.	Danish Haikal	No. 20, Jalan melur 7,			2		MB576664138KL		Document	OUT FOR DELIVERY	  	-		0135454622\n"
outDeliveryAisyah:		.asciiz	" 3.	Nur Aisyah	E-31, Kampung Paloh Sekolah,		1		AC997681486NI		Parcel		OUT FOR DELIVERY	  	-		0132564773\n"
outDeliveryFaris:		.asciiz	" 4.	Faris		No. 11, Jalan Kenari,			3		DD310500467KT		Parcel		OUT FOR DELIVERY		-		0193354424\n"
decisionMsg:			.asciiz	"\n Press Y to select more parcels / Press N to exit.\n "
outDeliveryMsg:			.asciiz	"\n\n The parcel(s) is out for delivery."
voiceRecogMsg:			.asciiz	"\n Press R to perform voice recognition.\n "
speakingMsg:			.asciiz	"\n\n Speaking...\n"
updateMaisarah:			.asciiz	" 1.	Nik Maisarah	D-214, lorong Harmoni 8,		1		AA128446533BB		Document	ARRIVED	 		  	-		0125643121\n"
detailsRow:			.asciiz	"\n NO.	NAME		ADDRESS				AMT OF PARCEL		TRACKING NUM.		TYPE		STATUS			RECEIVED BY CUSTOMER	TEL NUM.\n"
updateMsg:			.asciiz	" Done. Here are the updated database \n"
notificationMsg:		.asciiz	"\n Notification is sent to the customer's phone."
message:			.asciiz	"\n Message: Delivery guy is already arrive at your gate.\n"

askCustomerPresence:		.asciiz "\n\n Are you at your parcel address? (Y/N) " 
atAddress:			.asciiz "\n\n Your parcel will be sent to your parcel address."
toStore:			.asciiz	"\n\n Your parcel will be sent to the nearest store." 	#An alert message if the recipient is not at the current address
scanQR:				.asciiz "\n\n Tap S/s to scan the QR code on parcel. "
scanning:			.asciiz "\n Scanning..."
statusScan:			.asciiz "\n\n Successfully scanning the QR code! Parcel received!\n"
validSent:			.asciiz "\n\n To confirm after making a choice either the parcel has been received at your current address or will be sent the nearest store, please press '/'. "			
confirm:			.asciiz "\n Successfully confirmed!"
thanksMessage:			.asciiz "\n\n Thank You for Using Our Service!\n"

linkInformationForm:		.asciiz "\n PROCEED TO INFORMATION FORM ?(Y/N): "
printInformationForm:		.asciiz "\n\n INFORMATION FORM \n Link: https://OlaDeliveryForm.my/my/ \n\n Enter Y to proceed with the link.\tEnter N to return to staff homepage: "

wrongInput1:			.asciiz "\n WRONG INPUT! Please try again: "
wrongCustomerName:		.asciiz "\n WRONG CUSTOMER NAME!"
wrongPhoneNumber:		.asciiz "\n WRONG CUSTOMER PHONE NUMBER!"
errorMsgPhoneNumber:		.asciiz "\n Incorrect format. Try Again : "
nameInLink:			.asciiz "\n Customer Name: "
phoneNumberInLink:		.asciiz "\n Customer Phone Number (e.g. : 0114567743) : "

parcelArrival:			.asciiz	"\n Sending a message to customer... \n Message: Parcel arrived \n"

errorsound:			.asciiz "\n The information is not in the database \n"
maisarah:			.asciiz "Nik Maisarah\n"
danish:				.asciiz "Danish Haikal\n"
aisyah:				.asciiz "Nur Aisyah\n"
faris:				.asciiz "Faris\n"
phoneMaisarah:			.asciiz "0125643121\n"
phoneDanish: 			.asciiz "0135454622\n"
phoneAisyah: 			.asciiz "0132564773\n"
phoneFaris: 			.asciiz "0193354424\n"

str1: 				.space 20
tone: 				.byte 69 
range: 				.byte 100
piano: 				.byte 58
vol: 				.byte 100


.text
# 1. Load the base address of custDetails to the register.

	la $t6, custDetails
	
# 2. Load the data of 4 customers to the register
# and Store the data of 4 customers from the register to the memory.

	la $t8, detailsMaisarah
	sw $t8,	0($t6)
	
	la $t8, detailsDanish
	sw $t8,	4($t6)
	
	la $t8, detailsAisyah
	sw $t8,	8($t6)
	
	la $t8, detailsFaris
	sw $t8,	12($t6)
	
frontPage:
# 3. Display welcoming message and display either staff or customer.
	la	$a0,welcomeMessage
	jal	printString
	
userDecision:	
# 4. Get users role whether staff or costumer (S/C).	
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)			
	beq	$s1, 'S', staffRegistrationPage
	beq	$s1, 'C', customerRegistrationPage
	bne	$s1, 'C', errorMessage

# 5. Display customer registration page.	
customerRegistrationPage:
	la	$a0,customer
	jal	printString
	
	la	$a0,diplayRegistrationpage
	jal	printString
	
# 6. Initialization for customer name. 		
    	add     $t0,$zero,$zero     		# index of array
    	addi    $t1,$zero,0         		# counter=1
    	la      $s2,customerNameArray       	# load address of customerNameArray storage area
	
# 7. Prompt the customer for name.
    	li      $v0,4
    	la      $a0,name
    	syscall
    	
# 8. Get the customer name.
	jal	registerUserInput
    	
# 9. Store pointer to name into array.
    	sw      $a0,array6($t0)
    	addi    $t0,$t0,4           		# advance offset into pointer array
    	addi    $t1,$t1,1           		# advance iteration count
    	addi    $s2,$s2,20          		# advance to next name area  

# 10. Initialization for customer address. 		
    	add     $t0,$zero,$zero     		# index of array
    	addi    $t1,$zero,0         		# counter=1
    	la      $s2,customerAddressArray   	# load address of customerAddressArray storage area
    	    	
# 11. Prompt the  customer for address.
    	li      $v0,4
    	la      $a0,address
    	syscall
    	
# 12. Get the customer address.
    	move    $a0,$s2             		# place to store string 
    	li      $a1,99
    	li      $v0,8
    	syscall

# 13. Store pointer to address into array.
    	sw      $a0,array7($t0)
    	addi    $t0,$t0,4           		# advance offset into pointer array
    	addi    $t1,$t1,1           		# advance iteration count
    	addi    $s2,$s2,20          		# advance to next customer address area  
    
# 14. Prompt the customer for phone number.
    	li      $v0,4
    	la      $a0,phoneNumber
    	syscall
    	
# 15. Get the customer phone number.   
tryAgainInputPhoneNumber: 	
    	li $v0, 12
	syscall
	jal Compare	# call Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare

	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare
	
	li $v0, 12
	syscall
	jal Compare

# 16. Jump to Customer name	
	j customerusername

# 17. Display \n
customerusername:
	li      $v0,4
    	la      $a0,n
    	syscall	
    	
# 18. Initialization for customer username. 	
    	add     $t0,$zero,$zero     		# index of array
    	addi    $t1,$zero,0         		# counter=1
    	la      $s2,customerUsernameArray   	# load address of customer username storage area

# 19. Prompt the customer for username.
    	li      $v0,4
    	la      $a0,username
    	syscall

# 20. Get the customer username.
    	jal	registerUserInput

# 21. Store pointer to username into array.
    	sw      $a0,array9($t0)

    	addi    $t0,$t0,4           		# advance offset into pointer array
    	addi    $t1,$t1,1           		# advance iteration count
    	addi    $s2,$s2,20          		# advance to next username area
    	
# 22. Initialization for customer password. 		
    	add     $t0,$zero,$zero     		# index of array
    	addi    $t2,$zero,0         		# counter=1
    	la      $s2,customerPasswordArray  	# load address of customerPasswordArray storage area
    	
# 23. Prompt the customer for password.
    	la	$a0,password
	jal	printString
	
# 24. Get the customer password.
	jal	registerUserInput
    	
# 25. Store pointer to password into array.
    	sw      $a0, array10($t0)
    	addi    $t0, $t0, 4           		# advance offset into pointer array
    	addi    $t1, $t1, 1           		# advance iteration count
    	addi    $s2, $s2, 20          		# advance to next paasword area  

# 26. Display customer login page.  	
customerLoginPage:
	la	$a0,customer
	jal	printString

	la	$a0,displayLoginPage
	jal	printString

# 27. Get customer username.	
	customerTryAgain:
	la	$a0,username
	jal	printString
	
	la	$s3, inputUsernameLogin
	jal	loginUserInput
	
# 28. Input validation for customer username.
	lw	$a2,array9($zero)
	move	$t3,$a2
	move	$a0,$t3
	
	customerLoop:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, customerUsernameErrorMessage
	beq	$t4, $zero, toCustomerPassword
	addi	$s3, $s3, 1
	addi	$a2, $a2, 1
	j customerLoop

# 29. If customer username valid, proceed to customer password	.
	toCustomerPassword:
	la	$a0,password
	jal	printString
	
	la	$s3, inputPasswordLogin
	jal	loginUserInput
	
# 30. Input validation for customer password.
	lw	$a2,array10($zero)
	move	$t3,$a2
	move	$a0,$t3
	
	customerLoops:
	lb	$t2, ($s3)
	lb	$t3, ($a2)
	bne	$t2, $t3, customerPasswordErrorMessage
	beq	$t2, $zero, customerHomepage
	addi	$s3, $s3,1
	addi	$a2, $a2,1
	j customerLoops

# 31. Display customer hompage.	
customerHomepage:
	la	$a0,CustomerHomepage
	jal	printString

# 32. Display a question to ask about customer's presence whether he/she is at home or not.
customerPresence:
	la	$a0, askCustomerPresence
	jal	printString
	
	li 	$v0, 12 
	syscall	
	
# 33. Confirmation on customer's presence whether he/she is at home or not.
	addi	$t2, $v0, 0
	beq	$t2, 'Y', currentAddress 	
	beq	$t2, 'y', currentAddress 	
	beq	$t2, 'N', nearestStore 		
	beq	$t2, 'n', nearestStore 		
	la	$a0, wrongInput
	jal	printString
	j	customerPresence	

currentAddress:
	la	$a0, atAddress
	jal	printString
	
# 34. Display a message to perform a scan QR code.
qrCode:
	li	$v0, 4
	la	$a0, scanQR
	syscall

# 35. Get input to perform QR code scanning.	
	li	$v0, 12
	syscall
	
	beq	$v0, 'S', scanningQR
	beq	$v0, 's', scanningQR
	la	$a0, wrongInput
	jal	printString
	j	qrCode

# 36. Display scanning message.
scanningQR:	
	li 	$v0, 4
	la 	$a0, scanning
	syscall

# 37. Display status scanning message.	
scanStatus:
	li	$v0, 4
	la	$a0, statusScan
	syscall
	j validation

# 38. Display nearest store message.
nearestStore:
	la	$a0, toStore	
	jal	printString
	j 	validation
	
# 39. Validation on confirming the parcel has been received or will be sent to the nearest store.
validation:
	li	$v0, 4
	la	$a0, validSent
	syscall
	
	# Press '/' to confirm.
	li	$v0, 12
	syscall
	
	beq	$v0, '/', successConfirm 
	la	$a0, wrongInput
	jal 	printString
	j	validation

# 40. Display successful message. 
successConfirm:
	li 	$v0, 4
	la 	$a0, confirm
	syscall
	
# 41. Display Thank You message	 for customer.
messageThanks:
	li	$v0, 4
	la	$a0, thanksMessage
	syscall		

# 42. Display customer logout page.	
customerLogoutAccount:
	la	$a0, logout
	jal	printString
	
	customerDecision2:
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	beq	$s1, 'Y', customerExit
	beq	$s1, 'y', customerExit
	beq	$s1, 'N', customerHomepage
	beq	$s1, 'n', customerHomepage
	bne	$s1, 'N', customerLogoutErrorMessage

# 43. Display customer exit page.		
customerExit:
	
	la	$a0, exitMessage
	jal	printString
	
	customerDecision3:
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	beq	$s1, 'Y', end
	beq	$s1, 'y', end
	beq	$s1, 'N', customerLoginPage
	beq	$s1, 'n', customerLoginPage
	bne	$s1, 'N', CustomerExitErrorMessage


# 44. Display staff registration page.		
staffRegistrationPage:
	la	$a0, staff
	jal	printString

	la	$a0, diplayRegistrationpage
	jal	printString
	
# 45. Initialization for staff name. 		
    	add     $t0, $zero, $zero     		# index of array
    	addi    $t1, $zero, 0         		# counter=1
    	la      $s2, staffNameArray       	# load address of staffNameArray storage area

	
# 46. Prompt the user for staff name.
    	li      $v0, 4
    	la      $a0, name
    	syscall
    	
# 47. Get the staff name.
	jal	registerUserInput
    	
# 48. Store pointer to staff name into array.
    	sw      $a0, array3($t0)
    	addi    $t0, $t0, 4           		# advance offset into pointer array
    	addi    $t1, $t1, 1           		# advance iteration count
    	addi    $s2, $s2, 20          		# advance to next staff name area  
    	
# 49. Prompt the user for staff phone number.
    	li      $v0, 4
    	la      $a0, phoneNumber
    	syscall
    	
# 50. Get the staff phone number.
tryAgainInputStaffPhoneNumber: 	
    	li $v0, 12
	syscall
	jal Compare2	# call Compare
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2

	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
	li $v0, 12
	syscall
	jal Compare2
	
# 51. Jump to staff username name	
	j staffusername
    	    	
# 52. print \n
staffusername: 	
    	li      $v0, 4
    	la      $a0, n
    	syscall

# 53. Initialization for staff username.	
    	add     $t0, $zero, $zero    		# index of array
    	addi    $t1, $zero, 0         		# counter=1
    	la      $s2, staffUsernameArray   	# load address of staffUsernameArray storage area

# 54. Prompt the user for staff username.
    	li      $v0, 4
    	la      $a0, username
    	syscall

# 55. Get the staff username.
    	jal	registerUserInput

# 56. Store pointer to staff username into array.
    	sw      $a0, array1($t0)

    	addi    $t0, $t0, 4           		# advance offset into pointer array
    	addi    $t1, $t1, 1           		# advance iteration count
    	addi    $s2, $s2, 20          		# advance to next staff username area
    	
# 57. Initialization for staff password. 		
    	add     $t0, $zero, $zero     		# index of array
    	addi    $t2, $zero, 0         		# counter=1
    	la      $s2, staffPasswordArray   	# load address of staffPasswordArray storage area
    	
# 58. Prompt the user for staff password.
    	la	$a0, password
	jal	printString
	
# 59. Get the staff password.
	jal	registerUserInput
    	
# 60. Store pointer to staff password into array.
    	sw      $a0, array2($t0)
    	addi    $t0, $t0, 4           		# advance offset into pointer array
    	addi    $t1, $t1, 1           		# advance iteration count
    	addi    $s2, $s2, 20          		# advance to next staff password area  
    	
# 61. Display staff login page.	
staffLoginPage:
	la	$a0, staff
	jal	printString
	
	la	$a0, displayLoginPage
	jal	printString

# 62. Get staff username.	
	tryAgain:
	la	$a0, username
	jal	printString
	
	la	$s3, inputUsernameLogin
	jal	loginUserInput
	
# 63. Input validation for username.
	lw	$a2, array1($zero)
	move	$t3, $a2
	move	$a0, $t3
	
	loops:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, usernameErrorMessage
	beq	$t4, $zero, topassword
	addi	$s3, $s3, 1
	addi	$a2, $a2, 1
	j loops

# 64. If staff username valid, proceed to staff password.	
	topassword:
	la	$a0, password
	jal	printString
	
	la	$s3, inputPasswordLogin
	jal	loginUserInput

# 65. Input validation for password.
	lw	$a2, array2($zero)
	move	$t3, $a2
	move	$a0, $t3
	
	loop:
	lb	$t2, ($s3)
	lb	$t3, ($a2)
	bne	$t2, $t3, passwordErrorMessage
	beq	$t2, $zero, staffhomepage
	addi	$s3, $s3, 1
	addi	$a2, $a2, 1
	j loop

# 66. Display staff homepage. 		
staffhomepage: 
	li      $v0, 4
    	la      $a0, n
    	syscall
    	
	la	$a0, staffHomepage
	jal	printString
	jal	printCustDetails
	
# 67. Display message to select the parcels to be delivered based on the 'NO.' in the list.
	li $v0, 4
	la $a0, selectParcelNum
	syscall

# 68. Display the "Enter the NO. chosen:" message.
selectParcel:
	li $v0, 4
	la $a0, parcelNum
	syscall
	
# 69. Get input to select the No.

	li $v0, 5
	syscall	

# 70. Compare and update the new parcels details list.
# and do input validation.

	bgt	$v0, 4, wrgNumMsg
	beq	$v0, 1, checkParcel
	beq	$v0, 2, outDelivery2
	beq	$v0, 3, outDelivery3
	beq	$v0, 4, outDelivery4
	
# 71. Display error message.
wrgNumMsg:
	li	$v0, 4
	la	$a0, wrgParcelNum
	syscall
	
	j selectParcel
	
# 72. Compare and check if the parcel is already arrived at the customer's address or not.
checkParcel:
	beq	$v0, $t9, arrivedParcel
	bne	$v0, $t9, outDelivery1

# 73. Display a message that the parcel is already arrived at the customer's address.
arrivedParcel:
	li 	$v0, 4
	la 	$a0, arrivedMsg
	syscall
	
	j next
	
# 74. Update the status of the customer's parcel.
outDelivery1:
	la 	$t8, outDeliveryMaisarah
	sw 	$t8,	0($t6)
	jal 	printCustDetails
	j 	next
	
outDelivery2:
	la 	$t8, outDeliveryDanish
	sw 	$t8,	4($t6)
	jal 	printCustDetails
	j 	next

outDelivery3:	
	la 	$t8, outDeliveryAisyah
	sw 	$t8,	8($t6)
	jal 	printCustDetails
	j 	next

outDelivery4:	
	la 	$t8, outDeliveryFaris
	sw 	$t8,	12($t6)
	jal 	printCustDetails
	j 	next

# 75. Display "Press Y to select more parcels / Press N to exit." message for the user to make the decision.
next:
	li	$v0, 4
	la	$a0, decisionMsg
	syscall

# 76. Get input to the user's decision.	
	li	$v0, 12
	syscall
	
# 77. Compare the user's decision for the next action.
	beq	$v0, 'Y', selectParcel
	beq	$v0, 'y', selectParcel
	beq	$v0, 'N', status
	beq	$v0, 'n', status
	bne	$v0, 'Y', invalidInput
	bne	$v0, 'y', invalidInput
	bne	$v0, 'N', invalidInput
	bne	$v0, 'n', invalidInput
	
# 78. Display a message that the parcel is out for delivery.
status:
	li 	$v0, 4
	la 	$a0, outDeliveryMsg
	syscall
	
	j 	voiceRecog

# 79. Display error message.
invalidInput:
	li 	$v0, 4
	la 	$a0, wrongInput
	syscall
	
	j 	next

# 80. Display a message to perform a voice recognition.
voiceRecog:
	li	$v0, 4
	la	$a0, voiceRecogMsg
	syscall
	
# 81. Get input to perform the voice recognition.	
	li	$v0, 12
	syscall
	
	beq	$v0, 'r', printSpeaking
	beq	$v0, 'R', printSpeaking
	bne	$v0, 'r', printCustDetails
	bne	$v0, 'R', printCustDetails

# 82. Display the message that the user is talking.
printSpeaking:
	
	li 	$v0, 4
	la 	$a0, speakingMsg
	syscall

# 83. Display the message "Done. Here is the updated database.

	li 	$v0, 4
	la 	$a0, updateMsg
	syscall

# 84. Display the updated parcels details list.

	la 	$t8, updateMaisarah
	sw 	$t8, 0($t6)
	addi 	$t9, $zero, 0				# initialise $t9 to zero
	addi 	$t9, $t9, 1				# iterate by 1 to identify that the parcel is already arrived at the customer's address 
	jal	printCustDetails


# 85. Display "Notification is sent to the customer." message.

	li 	$v0, 4
	la 	$a0, notificationMsg
	syscall
	
# 86. Display a message to the customer upon the arrival of the delivery guy.
	
	li 	$v0, 4
	la 	$a0, message
	syscall

# 87. Display link information form.
displayInformation:	
	la	$a0,linkInformationForm
	jal	printString

# 88. Get user input to information form.	
decision5:	
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	beq	$s1, 'Y', proceedInformationForm
	beq	$s1, 'y', proceedInformationForm
	beq	$s1, 'N', staffhomepage 	
	beq	$s1, 'n', staffhomepage
	bne	$s1, 'Y', invalidInput1
	bne	$s1, 'y', invalidInput1	
	bne	$s1, 'N', invalidInput1	
	bne	$s1, 'n', invalidInput1	
	
invalidInput1:
	la	$a0,wrongInput1
	jal	printString
	j	decision5

invalidInput2:
	la	$a0,wrongInput1
	jal	printString
	j	decision6
	
# 89. Display link information form.	
proceedInformationForm:
	la	$a0,printInformationForm
	jal	printString
	
	decision6:	
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	
	beq	$s1, 'Y', customerName
	beq	$s1, 'y', customerName
	beq 	$s1, 'N', staffhomepage		
	beq 	$s1, 'n', staffhomepage
	bne	$s1, 'Y', invalidInput2
	bne	$s1, 'y', invalidInput2	
	bne	$s1, 'N', invalidInput2	
	bne	$s1, 'n', invalidInput2

# 90. Display name message and get the customer name.	
customerName:
	li 	$v0,4
	la 	$a0,nameInLink
	syscall

	li 	$v0,8
	la 	$a0,str1
	addi 	$a1,$zero,20		
	syscall   
	
	# Load address of user input into $a2	
	la 	$a2,str1
	
	# Load address of maisarah's name into $a1 and move to $s3
	la 	$a1,maisarah 
	move	$s3, $a1

# 91. Validation for maisrah's name.
	loop0:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, error
	beq	$t4,$zero, askPhone		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop0
	
error:
	# Load address of user input into $a2	
	# Load address of danish's name into $s3
	la $a2, str1
	la $s3, danish
	
# 92. Validation for danish's name.	
	loop1:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, error1
	beq	$t4,$zero, askPhone1		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop1
	
error1:
	# Load address of user input into $a2	
	# Load address of aisyah's name into $s3
	la $a2, str1
	la $s3, aisyah

# 93. Validation for aisyah's name.		
	loop2:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, error2
	beq	$t4,$zero, askPhone2		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop2
	
error2:
	# Load address of user input into $a2	
	# Load address of Faris's name into $s3
	la $a2, str1
	la $s3, faris
		
# 94. Validation for Faris's name.
	loop3:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, errormsg
	beq	$t4,$zero, askPhone3
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop3

# 95. Display errorsound message and give alert by producing a sound.
errorPhone:
errormsg:
	li $v0,4
	la $a0,errorsound
	syscall
		
	li $v0, 31 
	la $t0, tone
	la $t1, range 
	la $t2, piano
	la $t3, vol 
	move $a0, $t0 
	move $a1, $t1 
	move $a2, $t2
	move $a3, $t3 
	syscall 
	j customerName

# 96. Display phone number message and get the customer phone number		
askPhone:
	jal printPhonemsg
	# Load address of user input into $a2	
	la $a2, str1
	
	# Load address of maisarah's phone number into $s3
	la $s3, phoneMaisarah
	
# 97. Validation for Maisarah's phone number.
	loop8:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, errorPhone
	beq	$t4,$zero, success		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop8
	
askPhone1:
	jal printPhonemsg
	# Load address of user input into $a2	
	la $a2, str1
	
	# Load address of Danish's phone number into $s3
	la $s3, phoneDanish
	
# 98. Validation for Danish's phone number.
	loop9:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, errorPhone
	beq	$t4,$zero, success		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop9

askPhone2:
	jal printPhonemsg
	# Load address of user input into $a2	
	la $a2, str1
	
	# Load address of Aisyah's phone number into $s3
	la $s3, phoneAisyah
	
# 99. Validation for Aisyah's phone number.
	loop10:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, errorPhone
	beq	$t4,$zero, success		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop10
	
askPhone3:
	jal printPhonemsg
	# Load address of user input into $a2	
	la $a2, str1
	
	# Load address of Faris's phone number into $s3
	la $s3, phoneFaris

# 100. Validation for Faris's phone number.
	loop11:
	lb	$t4, ($s3)
	lb	$t5, ($a2)
	bne	$t4, $t5, errorPhone
	beq	$t4,$zero, success		
	addi	$s3,$s3,1
	addi	$a2,$a2,1
	j loop11

	# Display phone number message and get user input for phone number
	printPhonemsg:
	li $v0,4
	la $a0,phoneNumberInLink
	syscall
	
	li $v0,8
	la $a0,str1
	addi $a1,$zero,20		
	syscall   
	
	jr $ra

# 101. Display parcel arrival message.	
success:	
linkInformation:	
	la	$a0,parcelArrival		
	jal	printString	
	j 	staffLogoutAccount
			
# 102. Display staff logout account.  	
staffLogoutAccount:
	la	$a0, logout
	jal	printString
	
	decision3:
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	beq	$s1, 'Y', exit
	beq	$s1, 'y', exit
	beq	$s1, 'N', staffhomepage
	beq	$s1, 'n', staffhomepage
	bne	$s1, 'N', logoutErrorMessage

# 103. Display staff exit program.	
exit:	
	la	$a0, exitMessage
	jal	printString
	
	decision4:
	li	$v0, 8
	la	$a0, variable1
	la	$a1, 2
	syscall
	
	move	$s1, $v0
	lb	$s1, ($a0)
	beq	$s1, 'Y', end
	beq	$s1, 'y', end
	beq	$s1, 'N', staffLoginPage
	beq	$s1, 'n', staffLoginPage
	bne	$s1, 'N', ExitErrorMessage

# 104. End program.	
end:
	li	$v0,10
	syscall

# Function to print string  		    	
printString:
	li	$v0,4
	syscall
	jr	$ra
	
# Fuction to print character	
printChar:
	li	$v0, 11
	syscall
	jr	$ra	

# Function to display all of the elements inside the parcels information list.	
printCustDetails:
	li 	$v0, 4
	la 	$a0, detailsRow
	syscall
	
	li 	$v0, 4
	lw 	$a0, 0($t6)
	syscall
	
	li 	$v0, 4
	la 	$a0, maisarahAdd1
	syscall
	
	li 	$v0, 4
	la 	$a0, maisarahAdd2
	syscall
	
	li 	$v0, 4
	la 	$a0, maisarahAdd3
	syscall
	
	li 	$v0, 4
	lw 	$a0, 4($t6)
	syscall
	
	li 	$v0, 4
	la 	$a0, danishAdd1
	syscall
	
	li 	$v0, 4
	la 	$a0, danishAdd2
	syscall
	
	li 	$v0, 4
	la 	$a0, danishAdd3
	syscall
	
	li 	$v0, 4
	lw 	$a0, 8($t6)
	syscall
	
	li 	$v0, 4
	la 	$a0, aisyahAdd1
	syscall
	
	li 	$v0, 4
	la 	$a0, aisyahAdd2
	syscall
	
	li 	$v0, 4
	lw 	$a0, 12($t6)
	syscall
	
	li 	$v0, 4
	la 	$a0, farisAdd1
	syscall
	
	li 	$v0, 4
	la 	$a0, farisAdd2
	syscall
	
	li 	$v0, 4
	la 	$a0, farisAdd3
	syscall
	
	jr 	$ra

# Function to get user input for registration	
registerUserInput:
	move    $a0,$s2             
    	li      $a1,99
    	li      $v0,8
    	syscall
    	jr	$ra
    	
# Function to get user input for login  	
loginUserInput:
	move	$t7, $s3
	move	$a0, $t7
	li	$a1, 20
	li	$v0, 8
	syscall
	jr	$ra

# Function to display error message		
errorMessage:
	li	$v0, 4
	la	$a0, wrongInput
	syscall
	j	userDecision

# Function to display username error message	
usernameErrorMessage:
	la	$a0, wrongUsername
	jal	printString
	j 	tryAgain

# Function to display password error message		
passwordErrorMessage:
	la	$a0, wrongPassword
	jal	printString
	j	tryAgain

# Function to display logout error message	
logoutErrorMessage:
	li	$v0, 4
	la	$a0, wrongInput
	syscall
	j 	decision3

# Function to display exit error message	
ExitErrorMessage:
	li	$v0, 4
	la	$a0, wrongInput
	syscall
	j 	decision4

# Function to display customer username error message	
customerUsernameErrorMessage:
	la	$a0, wrongUsername
	jal	printString
	j 	customerTryAgain

# Function to display customer password error message	
customerPasswordErrorMessage:
	la	$a0, wrongPassword
	jal	printString
	j	customerTryAgain

# Function to display customer logout error message	
customerLogoutErrorMessage:
	li	$v0, 4
	la	$a0, wrongInput
	syscall
	j 	customerDecision2

# Function to display customer exit error message
CustomerExitErrorMessage:
	li	$v0, 4
	la	$a0, wrongInput
	syscall
	j 	customerDecision3

# Function to compare character phone number	
Compare:	
	bltu $v0,'/', errorPhoneNumber
	bgtu $v0,'9', errorPhoneNumber	
	jr $ra

# Function to error message for phone number		
errorPhoneNumber:
	li $v0,4
	la $a0,errorMsgPhoneNumber
	syscall
	j tryAgainInputPhoneNumber
	
# Function to compare character phone number	
Compare2:	
	bltu $v0,'/', errorPhoneNumberStaff
	bgtu $v0,'9', errorPhoneNumberStaff	
	jr $ra
	
errorPhoneNumberStaff:
	li $v0,4
	la $a0,errorMsgPhoneNumber
	syscall
	j tryAgainInputStaffPhoneNumber
