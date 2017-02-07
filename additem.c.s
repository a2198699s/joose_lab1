# Barcode
	BcodeExists:
		null.							[property noBarcode] [single]
		Not null.						
	BcodeContent:
		Only contains numbers.          [if !noBarcode]
		Contains other characters. 		[if !noBarcode] [property invalid]
		Is a single number. 			[if !noBarcode] [single]
	
	BcodeValue:
		<99.							[if !invalid && !noBarcode] 
		99.								[if !invalid && !noBarcode] [single]
		>99 and <9999.					[if !invalid && !noBarcode]
		9999.							[if !invalid && !noBarcode]	[single]
		>9999.							[if !invalid && !noBarcode]
										 
	
# itemName 
	NameExists:
		null.                          	[property emptyName] [single]
		Not null.
	NameContent:
		Empty.							[if !emptyName] [single]
		No special characters.			[if !emptyName]
		Contains special characters.	[if !emptyName] 

		
# itemType_s 
	Identifiable by type:
		Identifiable.		
		Not identifiable.				[error]
			
	
# qty
	QuantityExists:
		null.							[property noQty] [single]
		Not null.
	QuantityContent:
		Only contains numbers.			[if !noQty]
		Contains other characters. 		[if !noQty] [single]
	QuantityValue:
		<0.								[if !noQty]	[single]	 
		0.								[if !noQty] [single]
		>0 and <100.					[if !noQty]
		100.							[if !noQty] [single]
		>100.							[if !noQty]	[single]				 

# supplier
	SupplierExists:
		null.							[property noSupplier] [single]
		Not null.
	SupplierContent:
		Empty.							[if !noSupplier] [single]
		Contains special characters.	[if !noSupplier] [single]	 
		No special characters.			[if !noSupplier]


# desc
	DescExists:
		null.                        	[property noDesc] [single]
		Not null.
	DescContent:
		Empty.							[if !noDesc] [single]
		Contains special characters.	[if !noDesc] [single]
		No special characters.			[if !noDesc]


