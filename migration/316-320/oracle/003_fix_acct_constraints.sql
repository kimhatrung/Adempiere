ALTER TABLE C_CHARGE_ACCT DROP CONSTRAINT CCHRAGE_CCHARGEACCT;
ALTER TABLE C_CHARGE_ACCT ADD CONSTRAINT CCHRAGE_CCHARGEACCT
	FOREIGN KEY (C_CHARGE_ID) REFERENCES C_CHARGE(C_CHARGE_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE A_ASSET_ACCT DROP CONSTRAINT AASSET_AASSETACCT;
ALTER TABLE A_ASSET_ACCT ADD CONSTRAINT AASSET_AASSETACCT
	FOREIGN KEY (A_ASSET_ID) REFERENCES A_ASSET(A_ASSET_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE A_ASSET_GROUP_ACCT DROP CONSTRAINT AASSETGROUP_AASSETGROUPACCT;
ALTER TABLE A_ASSET_GROUP_ACCT ADD CONSTRAINT AASSETGROUP_AASSETGROUPACCT
	FOREIGN KEY (A_ASSET_GROUP_ID) REFERENCES A_ASSET_GROUP (A_ASSET_GROUP_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE C_BANKACCOUNT_ACCT DROP CONSTRAINT CBANKACCOUNT_CBANKACCTACCT;
ALTER TABLE C_BANKACCOUNT_ACCT ADD CONSTRAINT CBANKACCOUNT_CBANKACCTACCT
	FOREIGN KEY (C_BANKACCOUNT_ID) REFERENCES C_BANKACCOUNT (C_BANKACCOUNT_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE C_BP_GROUP_ACCT DROP CONSTRAINT CBPGROUP_CBPGROUPACCT;
ALTER TABLE C_BP_GROUP_ACCT ADD CONSTRAINT CBPGROUP_CBPGROUPACCT
	FOREIGN KEY (C_BP_GROUP_ID) REFERENCES C_BP_GROUP (C_BP_GROUP_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE C_INTERORG_ACCT DROP CONSTRAINT ADORG_CINTERORGACCT;
ALTER TABLE C_INTERORG_ACCT ADD CONSTRAINT ADORG_CINTERORGACCT
	FOREIGN KEY (AD_ORG_ID) REFERENCES AD_ORG (AD_ORG_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;
ALTER TABLE C_INTERORG_ACCT DROP CONSTRAINT ADORGTO_CINTERORGACCT;
ALTER TABLE C_INTERORG_ACCT ADD CONSTRAINT ADORGTO_CINTERORGACCT
	FOREIGN KEY (AD_ORGTO_ID) REFERENCES AD_ORG (AD_ORG_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE C_CURRENCY_ACCT DROP CONSTRAINT CACCTSCHEMA_CCURRENCYACCT;
ALTER TABLE C_CURRENCY_ACCT ADD CONSTRAINT CACCTSCHEMA_CCURRENCYACCT
	FOREIGN KEY (C_ACCTSCHEMA_ID) REFERENCES C_ACCTSCHEMA (C_ACCTSCHEMA_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;

ALTER TABLE C_CURRENCY_ACCT DROP CONSTRAINT CCURRENCY_CCURRENCYACCT;
ALTER TABLE C_CURRENCY_ACCT ADD CONSTRAINT CCURRENCY_CCURRENCYACCT
	FOREIGN KEY (C_CURRENCY_ID) REFERENCES C_CURRENCY (C_CURRENCY_ID)
	ON DELETE CASCADE 
	ENABLE NOVALIDATE;
