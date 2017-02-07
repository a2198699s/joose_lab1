# Barcode
	Exists:
		null.							[property noBarcode]
		Not null.
	Content:
		Only contains numbers.          [if !noBarcode]
		Contains other characters. 		[if !noBarcode] [property invalid]
		Is a single number. 			[if !noBarcode]
	
	Value:
		<99.							[if !invalid && !noBarcode]
		99.								[if !invalid && !noBarcode]
		>99 and <9999.					[if !invalid && !noBarcode]
		9999.							[if !invalid && !noBarcode]	 
		>9999.							[if !invalid && !noBarcode]
										 
	
# itemName 
	Exists:
		null.                          	[property emptyName]
		Not null.
	Content:
		Empty.							[if !emptyName]
		No special characters.			[if !emptyName]
		Contains special characters.	[if !emptyName] 

		
# itemType_s 
	Identifiable by type:
		Identifiable.		
		Not identifiable.				[error]
			
	
# qty
	Exists:
		null.							[property noQty]
		Not null.
	Content:
		Only contains numbers.			[if !noQty]
		Contains other characters. 		[if !noQty] 
	Value:
		<0.								[if !noQty]		 
		0.								[if !noQty]
		>0 and <100.					[if !noQty]
		100.							[if !noQty]
		>100.							[if !noQty]						 

# supplier
	Exists:
		null.							[property noSupplier]
		Not null.
	Content:
		Empty.							[if !noSupplier]
		Contains special characters.	[if !noSupplier]	 
		No special characters.			[if !noSupplier]


# desc
	Exists:
		null.                        	[property noDesc]
		Not null.
	Content:
		Empty.							[if !noDesc]
		Contains special characters.	[if !noDesc]
		No special characters.			[if !noDesc]


