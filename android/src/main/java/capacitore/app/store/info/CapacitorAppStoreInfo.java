package capacitore.app.store.info;

import com.getcapacitor.Logger;

public class CapacitorAppStoreInfo {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
