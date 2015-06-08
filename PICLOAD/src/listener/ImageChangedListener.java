package listener;

import global.ImagePath;

import java.util.Map;

import javax.faces.component.UIComponent;
import javax.faces.event.AbortProcessingException;
import javax.faces.event.ValueChangeEvent;
import javax.faces.event.ValueChangeListener;


public class ImageChangedListener  implements ValueChangeListener{

	@Override
	public void processValueChange(ValueChangeEvent event)
			throws AbortProcessingException {
			UIComponent comp = event.getComponent();
			Map values = comp.getAttributes();
			//values.put("value", ImagePath.getPath1());
	}
	
	public ImageChangedListener(){
		super();
	}

}
