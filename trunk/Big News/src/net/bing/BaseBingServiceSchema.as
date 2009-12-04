package net.bing
{
	 import mx.rpc.xml.Schema
	 public class BaseBingServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseBingServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://schemas.microsoft.com/LiveSearch/2008/03/Search" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/LiveSearch/2008/03/Search">
    <xsd:complexType name="SearchRequest">
        <xsd:sequence>
            <xsd:element default="2.2" minOccurs="0" name="Version" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Market" type="xsd:string"/>
            <xsd:element minOccurs="0" name="UILanguage" type="xsd:string"/>
            <xsd:element name="Query" type="xsd:string"/>
            <xsd:element name="AppId" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Adult" type="tns:AdultOption"/>
            <xsd:element minOccurs="0" name="Latitude" type="xsd:double"/>
            <xsd:element minOccurs="0" name="Longitude" type="xsd:double"/>
            <xsd:element minOccurs="0" name="Radius" type="xsd:double"/>
            <xsd:element minOccurs="0" name="Options" type="tns:ArrayOfSearchOption"/>
            <xsd:element name="Sources" type="tns:ArrayOfSourceType"/>
            <xsd:element minOccurs="0" name="Web" type="tns:WebRequest"/>
            <xsd:element minOccurs="0" name="Image" type="tns:ImageRequest"/>
            <xsd:element minOccurs="0" name="Phonebook" type="tns:PhonebookRequest"/>
            <xsd:element minOccurs="0" name="Video" type="tns:VideoRequest"/>
            <xsd:element minOccurs="0" name="News" type="tns:NewsRequest"/>
            <xsd:element minOccurs="0" name="MobileWeb" type="tns:MobileWebRequest"/>
            <xsd:element minOccurs="0" name="Translation" type="tns:TranslationRequest"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="AdultOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Off"/>
            <xsd:enumeration value="Moderate"/>
            <xsd:enumeration value="Strict"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="ArrayOfSearchOption">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="SearchOption" type="tns:SearchOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="SearchOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="DisableLocationDetection"/>
            <xsd:enumeration value="EnableHighlighting"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="ArrayOfSourceType">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="SourceType" type="tns:SourceType"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="SourceType">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Spell"/>
            <xsd:enumeration value="Web"/>
            <xsd:enumeration value="Image"/>
            <xsd:enumeration value="RelatedSearch"/>
            <xsd:enumeration value="Phonebook"/>
            <xsd:enumeration value="Showtimes"/>
            <xsd:enumeration value="Weather"/>
            <xsd:enumeration value="Video"/>
            <xsd:enumeration value="Ad"/>
            <xsd:enumeration value="XRank"/>
            <xsd:enumeration value="InstantAnswer"/>
            <xsd:enumeration value="News"/>
            <xsd:enumeration value="QueryLocation"/>
            <xsd:enumeration value="MobileWeb"/>
            <xsd:enumeration value="Translation"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="WebRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="FileType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Options" type="tns:ArrayOfWebSearchOption"/>
            <xsd:element minOccurs="0" name="SearchTags" type="tns:ArrayOfString"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfWebSearchOption">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="WebSearchOption" type="tns:WebSearchOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="WebSearchOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="DisableHostCollapsing"/>
            <xsd:enumeration value="DisableQueryAlterations"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="ArrayOfString">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="string" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ImageRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Filters" type="tns:ArrayOfString"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="PhonebookRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="FileType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SortBy" type="tns:PhonebookSortOption"/>
            <xsd:element minOccurs="0" name="LocId" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Category" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="PhonebookSortOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Default"/>
            <xsd:enumeration value="Relevance"/>
            <xsd:enumeration value="Distance"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="VideoRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Filters" type="tns:ArrayOfString"/>
            <xsd:element minOccurs="0" name="SortBy" type="tns:VideoSortOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="VideoSortOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Relevance"/>
            <xsd:enumeration value="Date"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="NewsRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="LocationOverride" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Category" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SortBy" type="tns:NewsSortOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="NewsSortOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Relevance"/>
            <xsd:enumeration value="Date"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="MobileWebRequest">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Count" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Options" type="tns:ArrayOfMobileWebSearchOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfMobileWebSearchOption">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="MobileWebSearchOption" type="tns:MobileWebSearchOption"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="MobileWebSearchOption">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="DisableHostCollapsing"/>
            <xsd:enumeration value="DisableQueryAlterations"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:complexType name="TranslationRequest">
        <xsd:sequence>
            <xsd:element name="SourceLanguage" type="xsd:string"/>
            <xsd:element name="TargetLanguage" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="SearchResponse">
        <xsd:sequence>
            <xsd:element name="Version" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Query" type="tns:Query"/>
            <xsd:element minOccurs="0" name="Spell" type="tns:SpellResponse"/>
            <xsd:element minOccurs="0" name="Web" type="tns:WebResponse"/>
            <xsd:element minOccurs="0" name="Image" type="tns:ImageResponse"/>
            <xsd:element minOccurs="0" name="RelatedSearch" type="tns:RelatedSearchResponse"/>
            <xsd:element minOccurs="0" name="Phonebook" type="tns:PhonebookResponse"/>
            <xsd:element minOccurs="0" name="Video" type="tns:VideoResponse"/>
            <xsd:element minOccurs="0" name="InstantAnswer" type="tns:InstantAnswerResponse"/>
            <xsd:element minOccurs="0" name="News" type="tns:NewsResponse"/>
            <xsd:element minOccurs="0" name="MobileWeb" type="tns:MobileWebResponse"/>
            <xsd:element minOccurs="0" name="Translation" type="tns:TranslationResponse"/>
            <xsd:element minOccurs="0" name="Errors" type="tns:ArrayOfError"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="Query">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="SearchTerms" type="xsd:string"/>
            <xsd:element minOccurs="0" name="AlteredQuery" type="xsd:string"/>
            <xsd:element minOccurs="0" name="AlterationOverrideQuery" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="SpellResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfSpellResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfSpellResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="SpellResult" type="tns:SpellResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="SpellResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Value" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="WebResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfWebResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfWebResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="WebResult" type="tns:WebResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="WebResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Description" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="CacheUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DisplayUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DateTime" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SearchTags" type="tns:ArrayOfWebSearchTag"/>
            <xsd:element minOccurs="0" name="DeepLinks" type="tns:ArrayOfDeepLink"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfWebSearchTag">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="WebSearchTag" type="tns:WebSearchTag"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="WebSearchTag">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Name" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Value" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfDeepLink">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="DeepLink" type="tns:DeepLink"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="DeepLink">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ImageResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfImageResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfImageResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="ImageResult" type="tns:ImageResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ImageResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="MediaUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DisplayUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Width" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Height" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="FileSize" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="ContentType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Thumbnail" type="tns:Thumbnail"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="Thumbnail">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="ContentType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Width" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Height" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="FileSize" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="RunTime" type="xsd:unsignedInt"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="RelatedSearchResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfRelatedSearchResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfRelatedSearchResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="RelatedSearchResult" type="tns:RelatedSearchResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="RelatedSearchResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="PhonebookResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="LocalSerpUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfPhonebookResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfPhonebookResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="PhonebookResult" type="tns:PhonebookResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="PhonebookResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Business" type="xsd:string"/>
            <xsd:element minOccurs="0" name="PhoneNumber" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Address" type="xsd:string"/>
            <xsd:element minOccurs="0" name="City" type="xsd:string"/>
            <xsd:element minOccurs="0" name="StateOrProvince" type="xsd:string"/>
            <xsd:element minOccurs="0" name="CountryOrRegion" type="xsd:string"/>
            <xsd:element minOccurs="0" name="PostalCode" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Latitude" type="xsd:double"/>
            <xsd:element minOccurs="0" name="Longitude" type="xsd:double"/>
            <xsd:element minOccurs="0" name="UniqueId" type="xsd:string"/>
            <xsd:element minOccurs="0" name="BusinessUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="UserRating" type="xsd:double"/>
            <xsd:element minOccurs="0" name="ReviewCount" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="DisplayUrl" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="VideoResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfVideoResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfVideoResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="VideoResult" type="tns:VideoResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="VideoResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="PlayUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SourceTitle" type="xsd:string"/>
            <xsd:element minOccurs="0" name="RunTime" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="ClickThroughPageUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="StaticThumbnail" type="tns:Thumbnail"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="InstantAnswerResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfInstantAnswerResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfInstantAnswerResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="InstantAnswerResult" type="tns:InstantAnswerResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="InstantAnswerResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="ContentType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="ClickThroughUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Attribution" type="xsd:string"/>
            <xsd:element minOccurs="0" name="InstantAnswerSpecificData" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="NewsResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="RelatedSearches" type="tns:ArrayOfNewsRelatedSearch"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfNewsResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfNewsRelatedSearch">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="NewsRelatedSearch" type="tns:NewsRelatedSearch"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="NewsRelatedSearch">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfNewsResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="NewsResult" type="tns:NewsResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="NewsResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Source" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Snippet" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Date" type="xsd:string"/>
            <xsd:element minOccurs="0" name="BreakingNews" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="NewsCollections" type="tns:ArrayOfNewsCollection"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfNewsCollection">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="NewsCollection" type="tns:NewsCollection"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="NewsCollection">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Name" type="xsd:string"/>
            <xsd:element minOccurs="0" name="NewsArticles" type="tns:ArrayOfNewsArticle"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfNewsArticle">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="NewsArticle" type="tns:NewsArticle"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="NewsArticle">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Source" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Snippet" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Date" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="MobileWebResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Total" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Offset" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfMobileWebResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfMobileWebResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="MobileWebResult" type="tns:MobileWebResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="MobileWebResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Title" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Description" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Url" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DisplayUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DateTime" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="TranslationResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Results" type="tns:ArrayOfTranslationResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfTranslationResult">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="TranslationResult" type="tns:TranslationResult"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="TranslationResult">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="TranslatedTerm" type="xsd:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="ArrayOfError">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="Error" type="tns:Error"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="Error">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="Code" type="xsd:unsignedInt"/>
            <xsd:element minOccurs="0" name="Message" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Parameter" type="xsd:string"/>
            <xsd:element minOccurs="0" name="Value" type="xsd:string"/>
            <xsd:element minOccurs="0" name="HelpUrl" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SourceType" type="xsd:string"/>
            <xsd:element minOccurs="0" name="SourceTypeErrorCode" type="xsd:unsignedInt"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:element name="SearchRequest">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="parameters" type="tns:SearchRequest"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="SearchResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="parameters" type="tns:SearchResponse"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://schemas.microsoft.com/LiveSearch/2008/03/Search'));
		}
	}
}