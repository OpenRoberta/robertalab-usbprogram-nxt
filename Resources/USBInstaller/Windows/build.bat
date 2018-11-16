"%WIX%bin\heat.exe" dir java -out java.wxs -gg -cg JavaGroupId -dr JAVA -srd
"%WIX%bin\candle.exe" java.wxs setup.wxs
"%WIX%bin\light.exe" -out OpenRobertaUSBNXTSetupDE.msi -ext WixUIExtension -cultures:de-DE setup.wixobj java.wixobj -b ./java
"%WIX%bin\light.exe" -out OpenRobertaUSBNXTSetupEN.msi -ext WixUIExtension -cultures:en-US setup.wixobj java.wixobj -b ./java
@pause