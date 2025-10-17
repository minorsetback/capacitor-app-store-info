import { CapacitorAppStoreInfo } from 'capacitor-app-store-info';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CapacitorAppStoreInfo.echo({ value: inputValue })
}
