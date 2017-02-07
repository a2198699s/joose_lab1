# Barcode
	Exists:
		null.							[property noBarcode] [single]
		Not null.						
	Content:
		Only contains numbers.          [if !noBarcode]
		Contains other characters. 		[if !noBarcode] [property invalid]
		Is a single number. 			[if !noBarcode] [single]
	
	Value:
		<99.							[if !invalid && !noBarcode] 
		99.								[if !invalid && !noBarcode] [single]
		>99 and <9999.					[if !invalid && !noBarcode]
		9999.							[if !invalid && !noBarcode]	[single]
		>9999.							[if !invalid && !noBarcode]
										 
	
# itemName 
	Exists:
		null.                          	[property emptyName] [single]
		Not null.
	Content:
		Empty.							[if !emptyName] [single]
		No special characters.			[if !emptyName]
		Contains special characters.	[if !emptyName] 

		
# itemType_s 
	Identifiable by type:
		Identifiable.		
		Not identifiable.				[error]
			
	
# qty
	Exists:
		null.							[property noQty] [single]
		Not null.
	Content:
		Only contains numbers.			[if !noQty]
		Contains other characters. 		[if !noQty] [single]
	Value:
		<0.								[if !noQty]	[single]	 
		0.								[if !noQty] [single]
		>0 and <100.					[if !noQty]
		100.							[if !noQty] [single]
		>100.							[if !noQty]	[single]				 

# supplier
	Exists:
		null.							[property noSupplier] [single]
		Not null.
	Content:
		Empty.							[if !noSupplier] [single]
		Contains special characters.	[if !noSupplier] [single]	 
		No special characters.			[if !noSupplier]


# desc
	Exists:
		null.                        	[property noDesc] [single]
		Not null.
	Content:
		Empty.							[if !noDesc] [single]
		Contains special characters.	[if !noDesc] [single]
		No special characters.			[if !noDesc]


