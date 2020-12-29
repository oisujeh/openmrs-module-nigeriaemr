//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2020.05.28 at 11:46:26 AM WAT 
//

package org.openmrs.module.nigeriaemr.model.ndr;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 * <p>
 * Java class for ChildFollowupType complex type.
 * <p>
 * The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ChildFollowupType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="InfantARVType">
 *           &lt;simpleType>
 *             &lt;restriction base="{}CodeType">
 *               &lt;enumeration value="1"/>
 *               &lt;enumeration value="2"/>
 *               &lt;enumeration value="3"/>
 *               &lt;enumeration value="4"/>
 *             &lt;/restriction>
 *           &lt;/simpleType>
 *         &lt;/element>
 *         &lt;element name="TimingOfARVProphylaxis">
 *           &lt;simpleType>
 *             &lt;restriction base="{}CodeType">
 *               &lt;enumeration value="1"/>
 *               &lt;enumeration value="2"/>
 *               &lt;enumeration value="3"/>
 *               &lt;enumeration value="4"/>
 *             &lt;/restriction>
 *           &lt;/simpleType>
 *         &lt;/element>
 *         &lt;element name="AgeAtCTXInitiation" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="InfantOutcomeAt18Months">
 *           &lt;simpleType>
 *             &lt;restriction base="{}CodeType">
 *               &lt;enumeration value="1"/>
 *               &lt;enumeration value="2"/>
 *               &lt;enumeration value="3"/>
 *               &lt;enumeration value="4"/>
 *               &lt;enumeration value="5"/>
 *               &lt;enumeration value="6"/>
 *               &lt;enumeration value="7"/>
 *             &lt;/restriction>
 *           &lt;/simpleType>
 *         &lt;/element>
 *         &lt;element name="DateLinkedToARTClinic" type="{http://www.w3.org/2001/XMLSchema}date"/>
 *         &lt;element name="ARTEnrollmentNumber" type="{}StringType"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ChildFollowupType", propOrder = { "visitID", "visitDate", "infantARVType", "ageAtCTXInitiation",
        "infantOutcomeAt18Months", "dateLinkedToARTClinic", "artEnrollmentNumber" })
public class ChildFollowupType {
	
	@XmlElement(name = "VisitID", required = true)
	protected String visitID;
	
	@XmlElement(name = "VisitDate", required = true)
	@XmlSchemaType(name = "date")
	protected XMLGregorianCalendar visitDate;
	
	@XmlElement(name = "InfantARVType", required = true)
	protected String infantARVType;
	
	@XmlElement(name = "AgeAtCTXInitiation")
	protected Integer ageAtCTXInitiation;
	
	@XmlElement(name = "InfantOutcomeAt18Months", required = true)
	protected String infantOutcomeAt18Months;
	
	@XmlElement(name = "DateLinkedToARTClinic", required = true)
	@XmlSchemaType(name = "date")
	protected XMLGregorianCalendar dateLinkedToARTClinic;
	
	@XmlElement(name = "ARTEnrollmentNumber", required = true)
	protected String artEnrollmentNumber;
	
	/**
	 * Gets the value of the infantARVType property.
	 * 
	 * @return possible object is {@link String }
	 */
	public String getInfantARVType() {
		return infantARVType;
	}
	
	/**
	 * Sets the value of the infantARVType property.
	 * 
	 * @param value allowed object is {@link String }
	 */
	public void setInfantARVType(String value) {
		this.infantARVType = value;
	}
	
	/**
	 * Gets the value of the ageAtCTXInitiation property.
	 */
	public Integer getAgeAtCTXInitiation() {
		return ageAtCTXInitiation;
	}
	
	/**
	 * Sets the value of the ageAtCTXInitiation property.
	 */
	public void setAgeAtCTXInitiation(Integer value) {
		this.ageAtCTXInitiation = value;
	}
	
	/**
	 * Gets the value of the infantOutcomeAt18Months property.
	 * 
	 * @return possible object is {@link String }
	 */
	public String getInfantOutcomeAt18Months() {
		return infantOutcomeAt18Months;
	}
	
	/**
	 * Sets the value of the infantOutcomeAt18Months property.
	 * 
	 * @param value allowed object is {@link String }
	 */
	public void setInfantOutcomeAt18Months(String value) {
		this.infantOutcomeAt18Months = value;
	}
	
	/**
	 * Gets the value of the dateLinkedToARTClinic property.
	 * 
	 * @return possible object is {@link XMLGregorianCalendar }
	 */
	public XMLGregorianCalendar getDateLinkedToARTClinic() {
		return dateLinkedToARTClinic;
	}
	
	/**
	 * Sets the value of the dateLinkedToARTClinic property.
	 * 
	 * @param value allowed object is {@link XMLGregorianCalendar }
	 */
	public void setDateLinkedToARTClinic(XMLGregorianCalendar value) {
		this.dateLinkedToARTClinic = value;
	}
	
	/**
	 * Gets the value of the artEnrollmentNumber property.
	 * 
	 * @return possible object is {@link String }
	 */
	public String getARTEnrollmentNumber() {
		return artEnrollmentNumber;
	}
	
	/**
	 * Sets the value of the artEnrollmentNumber property.
	 * 
	 * @param value allowed object is {@link String }
	 */
	public void setARTEnrollmentNumber(String value) {
		this.artEnrollmentNumber = value;
	}
	
	public String getVisitID() {
		return visitID;
	}
	
	public void setVisitID(String visitID) {
		this.visitID = visitID;
	}
	
	public XMLGregorianCalendar getVisitDate() {
		return visitDate;
	}
	
	public void setVisitDate(XMLGregorianCalendar visitDate) {
		this.visitDate = visitDate;
	}
}
