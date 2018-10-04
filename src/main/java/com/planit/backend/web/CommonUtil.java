package com.planit.backend.web;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CommonUtil {
	
	public static String getTagValue(String tag, Element eElement) {
		if(eElement.getElementsByTagName(tag).item(0)==null) return "";
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = nlList.item(0);
		System.out.println("["+tag+"]"+nValue.getNodeValue());
		if(nValue == null) return "";
		return nValue.getNodeValue();
	}
	
}
