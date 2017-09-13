# AppLovin ANE

A thin wrapper around the AppLovin Android and iOS SDK for use on Heyzap's mediation.

The latest release can be found in [Releases](https://github.com/Heyzap/applovin-ane/releases).

Pull requests and issues are welcome.

#### AppLovin Versions
- iOS: 4.3.1
- Android: 7.3.2

#### Adding to your project

- Add the `AppLovin.ane` to your Adobe Flex Builder or Adobe Flash project.
- If on Android, follow the [integration instructions on Heyzap](https://developers.heyzap.com/docs/ane_setup_and_requirements#step-3-modify-your-application-descriptor) or add the following permissions and activities to your Android Manifest in your application descriptor:
 
	```xml
  <!-- Required by AppLovin, and Heyzap Ad Network -->
  <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

  <!-- Required by AppLovin, and Heyzap Ad Network -->
  <uses-permission android:name="android.permission.INTERNET" />

  <!-- Required by AppLovin -->
  <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
	```

	```xml
	<!-- AppLovin -->
  <activity android:name="com.applovin.adview.AppLovinInterstitialActivity" android:configChanges="orientation|screenSize" />
  <activity android:name="com.applovin.adview.AppLovinConfirmationActivity" android:configChanges="orientation|screenSize" />
  <meta-data android:name="applovin.sdk.key" android:value="** YOUR SDK KEY **" />
	```

- If not done automatically, add the follow extension context to your application descriptor:

	```xml
	<extensions>
	    <extensionID>com.heyzap.sdk.extensions.applovin</extensionID>
	</extensions>
	```

#### Updating AppLovin
**For iOS**:
- Replace `AppLovinSDK.framework` in `ios/Vendor` with a newer version.

**For Android**:
- Replace `AppLovin.jar` in `android/libs` with a newer version.
- Update `android/platform.xml` with any new android libraries that the newer version might be dependent on. Android libraries can be added under the _packagedDependencies_ tag. The actual `.jar` files can be added to the `andorid/libs` directory.

After making the necessary modifications, build the new ANE by following the [building](#building) instructions below.

#### Building

##### Requirements:
- Mac OS X
- XCode
- [Apache Ant](http://ant.apache.org/)
- [AIR SDK](http://www.adobe.com/devnet/air/air-sdk-download.html)

##### Building:
- Make a `build.config` by copying `build.config.dist` (your local config file)
- Add the path to your AIR SDK in `build.config` (under `air.sdk`)
- From the root of the repository, run `ant`.

After build completes, the native extension will be in `bin/AppLovin.ane`.
