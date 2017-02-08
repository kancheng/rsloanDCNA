# weg -> 0.70

nac = function( data, weg){
	## data.frame row �ഫ���V�q
	dfvtr = function( data, dfrow){
		vtcda = as.numeric(data[ dfrow, 2:NCOL(data)])
		vtcda
	}

	## �D�� NA ��v
	nacllog = function( data, dcol){
		# �v�� DATA
		na2dt = dfvtr( data, dcol)

		# �v�����l molecular
		n2dmcr = length(na.omit(na2dt))

		# �v������ Denominator
		n2dtmr = length(na2dt)

		nall = n2dmcr/n2dtmr
		nall
	}

	## NA ��ǦX�֦��V�q
	nabc = function(data){
		d = numeric()
		for( ncg in 1:NROW(data)){
			k = nacllog( data, ncg)
			d = c( d, k)
		}
		d
	}

	## �z��
	data[!(nabc(data) < weg),]
}