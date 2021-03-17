public class com.android.systemui.qs.tileimpl.QSFactoryImpl implements com.android.systemui.plugins.qs.QSFactory {
	 /* .source "QSFactoryImpl.java" */
	 /* # interfaces */
	 /* # instance fields */
	 private final javax.inject.Provider mAirplaneModeTileProvider;
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "Ljavax/inject/Provider<", */
	 /* "Lcom/android/systemui/qs/tiles/AirplaneModeTile;", */
	 /* ">;" */
	 /* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mBatterySaverTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/BatterySaverTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mBluetoothTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/BluetoothTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mCameraToggleTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CameraToggleTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mCastTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CastTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mCellularTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CellularTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mColorInversionTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ColorInversionTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mCustomTileBuilderProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/external/CustomTile$Builder;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mDataSaverTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DataSaverTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mDeviceControlsTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DeviceControlsTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mDndTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DndTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mFlashlightTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/FlashlightTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mHotspotTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/HotspotTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mInternetTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/InternetTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mLocationTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/LocationTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mMemoryTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mMicrophoneToggleTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mNfcTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/NfcTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mNightDisplayTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/NightDisplayTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final dagger.Lazy mQsHostLazy;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ldagger/Lazy<", */
/* "Lcom/android/systemui/qs/QSHost;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mReduceBrightColorsTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mRotationLockTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/RotationLockTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mScreenRecordTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ScreenRecordTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final Boolean mSideLabels;
private final javax.inject.Provider mUiModeNightTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/UiModeNightTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mUserTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/UserTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mWifiTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/WifiTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final javax.inject.Provider mWorkModeTileProvider;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/WorkModeTile;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public com.android.systemui.qs.tileimpl.QSFactoryImpl ( ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ldagger/Lazy<", */
/* "Lcom/android/systemui/qs/QSHost;", */
/* ">;Z", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/external/CustomTile$Builder;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/WifiTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/InternetTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/BluetoothTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CellularTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DndTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ColorInversionTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/AirplaneModeTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/WorkModeTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/RotationLockTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/FlashlightTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/LocationTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CastTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/HotspotTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/UserTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/BatterySaverTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DataSaverTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/NightDisplayTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/NfcTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/UiModeNightTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ScreenRecordTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/CameraToggleTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;", */
/* ">;", */
/* "Ljavax/inject/Provider<", */
/* "Lcom/android/systemui/qs/tiles/DeviceControlsTile;", */
/* ">;)V" */
/* } */
} // .end annotation
/* move-object v0, p0 */
/* .line 129 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* move-object v1, p1 */
/* .line 130 */
this.mQsHostLazy = v1;
/* move-object v1, p3 */
/* .line 131 */
this.mCustomTileBuilderProvider = v1;
/* move v1, p2 */
/* .line 133 */
/* iput-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSideLabels:Z */
/* move-object v1, p4 */
/* .line 135 */
this.mWifiTileProvider = v1;
/* move-object v1, p5 */
/* .line 136 */
this.mInternetTileProvider = v1;
/* move-object v1, p6 */
/* .line 137 */
this.mBluetoothTileProvider = v1;
/* move-object v1, p7 */
/* .line 138 */
this.mCellularTileProvider = v1;
/* move-object v1, p8 */
/* .line 139 */
this.mDndTileProvider = v1;
/* move-object v1, p9 */
/* .line 140 */
this.mColorInversionTileProvider = v1;
/* move-object v1, p10 */
/* .line 141 */
this.mAirplaneModeTileProvider = v1;
/* move-object v1, p11 */
/* .line 142 */
this.mWorkModeTileProvider = v1;
/* move-object v1, p12 */
/* .line 143 */
this.mRotationLockTileProvider = v1;
/* move-object v1, p13 */
/* .line 144 */
this.mFlashlightTileProvider = v1;
/* move-object/from16 v1, p14 */
/* .line 145 */
this.mLocationTileProvider = v1;
/* move-object/from16 v1, p15 */
/* .line 146 */
this.mCastTileProvider = v1;
/* move-object/from16 v1, p16 */
/* .line 147 */
this.mHotspotTileProvider = v1;
/* move-object/from16 v1, p17 */
/* .line 148 */
this.mUserTileProvider = v1;
/* move-object/from16 v1, p18 */
/* .line 149 */
this.mBatterySaverTileProvider = v1;
/* move-object/from16 v1, p19 */
/* .line 150 */
this.mDataSaverTileProvider = v1;
/* move-object/from16 v1, p20 */
/* .line 151 */
this.mNightDisplayTileProvider = v1;
/* move-object/from16 v1, p21 */
/* .line 152 */
this.mNfcTileProvider = v1;
/* move-object/from16 v1, p22 */
/* .line 153 */
this.mMemoryTileProvider = v1;
/* move-object/from16 v1, p23 */
/* .line 154 */
this.mUiModeNightTileProvider = v1;
/* move-object/from16 v1, p24 */
/* .line 155 */
this.mScreenRecordTileProvider = v1;
/* move-object/from16 v1, p25 */
/* .line 156 */
this.mReduceBrightColorsTileProvider = v1;
/* move-object/from16 v1, p26 */
/* .line 157 */
this.mCameraToggleTileProvider = v1;
/* move-object/from16 v1, p27 */
/* .line 158 */
this.mMicrophoneToggleTileProvider = v1;
/* move-object/from16 v1, p28 */
/* .line 159 */
this.mDeviceControlsTileProvider = v1;
return;
} // .end method
private com.android.systemui.qs.tileimpl.QSTileImpl createTileInternal ( java.lang.String p0 ) {
/* .locals 2 */
/* .line 172 */
(( java.lang.String ) p1 ).hashCode ( ); // invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
v0 = (( java.lang.String ) p1 ).hashCode ( ); // invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
int v1 = -1; // const/4 v1, -0x1
/* sparse-switch v0, :sswitch_data_0 */
/* goto/16 :goto_0 */
/* :sswitch_0 */
final String v0 = "location"; // const-string v0, "location"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_0 */
/* goto/16 :goto_0 */
} // :cond_0
/* const/16 v1, 0x17 */
/* goto/16 :goto_0 */
/* :sswitch_1 */
final String v0 = "hotspot"; // const-string v0, "hotspot"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_1 */
/* goto/16 :goto_0 */
} // :cond_1
/* const/16 v1, 0x16 */
/* goto/16 :goto_0 */
/* :sswitch_2 */
final String v0 = "internet"; // const-string v0, "internet"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_2 */
/* goto/16 :goto_0 */
} // :cond_2
/* const/16 v1, 0x15 */
/* goto/16 :goto_0 */
/* :sswitch_3 */
final String v0 = "saver"; // const-string v0, "saver"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_3 */
/* goto/16 :goto_0 */
} // :cond_3
/* const/16 v1, 0x14 */
/* goto/16 :goto_0 */
/* :sswitch_4 */
final String v0 = "night"; // const-string v0, "night"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_4 */
/* goto/16 :goto_0 */
} // :cond_4
/* const/16 v1, 0x13 */
/* goto/16 :goto_0 */
/* :sswitch_5 */
final String v0 = "cameratoggle"; // const-string v0, "cameratoggle"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_5 */
/* goto/16 :goto_0 */
} // :cond_5
/* const/16 v1, 0x12 */
/* goto/16 :goto_0 */
/* :sswitch_6 */
/* const-string/jumbo v0, "work" */
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_6 */
/* goto/16 :goto_0 */
} // :cond_6
/* const/16 v1, 0x11 */
/* goto/16 :goto_0 */
/* :sswitch_7 */
/* const-string/jumbo v0, "wifi" */
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_7 */
/* goto/16 :goto_0 */
} // :cond_7
/* const/16 v1, 0x10 */
/* goto/16 :goto_0 */
/* :sswitch_8 */
/* const-string/jumbo v0, "user" */
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_8 */
/* goto/16 :goto_0 */
} // :cond_8
/* const/16 v1, 0xf */
/* goto/16 :goto_0 */
/* :sswitch_9 */
final String v0 = "dark"; // const-string v0, "dark"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_9 */
/* goto/16 :goto_0 */
} // :cond_9
/* const/16 v1, 0xe */
/* goto/16 :goto_0 */
/* :sswitch_a */
final String v0 = "cell"; // const-string v0, "cell"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_a */
/* goto/16 :goto_0 */
} // :cond_a
/* const/16 v1, 0xd */
/* goto/16 :goto_0 */
/* :sswitch_b */
final String v0 = "cast"; // const-string v0, "cast"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_b */
/* goto/16 :goto_0 */
} // :cond_b
/* const/16 v1, 0xc */
/* goto/16 :goto_0 */
/* :sswitch_c */
final String v0 = "nfc"; // const-string v0, "nfc"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_c */
/* goto/16 :goto_0 */
} // :cond_c
/* const/16 v1, 0xb */
/* goto/16 :goto_0 */
/* :sswitch_d */
final String v0 = "dnd"; // const-string v0, "dnd"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_d */
/* goto/16 :goto_0 */
} // :cond_d
/* const/16 v1, 0xa */
/* goto/16 :goto_0 */
/* :sswitch_e */
final String v0 = "bt"; // const-string v0, "bt"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_e */
/* goto/16 :goto_0 */
} // :cond_e
/* const/16 v1, 0x9 */
/* goto/16 :goto_0 */
/* :sswitch_f */
final String v0 = "mictoggle"; // const-string v0, "mictoggle"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_f */
/* goto/16 :goto_0 */
} // :cond_f
/* const/16 v1, 0x8 */
/* goto/16 :goto_0 */
/* :sswitch_10 */
final String v0 = "rotation"; // const-string v0, "rotation"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_10 */
} // :cond_10
int v1 = 7; // const/4 v1, 0x7
/* :sswitch_11 */
final String v0 = "battery"; // const-string v0, "battery"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_11 */
} // :cond_11
int v1 = 6; // const/4 v1, 0x6
/* :sswitch_12 */
final String v0 = "reduce_brightness"; // const-string v0, "reduce_brightness"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_12 */
} // :cond_12
int v1 = 5; // const/4 v1, 0x5
/* :sswitch_13 */
final String v0 = "controls"; // const-string v0, "controls"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_13 */
} // :cond_13
int v1 = 4; // const/4 v1, 0x4
/* :sswitch_14 */
final String v0 = "airplane"; // const-string v0, "airplane"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_14 */
} // :cond_14
int v1 = 3; // const/4 v1, 0x3
/* :sswitch_15 */
final String v0 = "screenrecord"; // const-string v0, "screenrecord"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_15 */
} // :cond_15
int v1 = 2; // const/4 v1, 0x2
/* :sswitch_16 */
final String v0 = "flashlight"; // const-string v0, "flashlight"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_16 */
} // :cond_16
int v1 = 1; // const/4 v1, 0x1
/* :sswitch_17 */
final String v0 = "inversion"; // const-string v0, "inversion"
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_17 */
} // :cond_17
int v1 = 0; // const/4 v1, 0x0
} // :goto_0
/* packed-switch v1, :pswitch_data_0 */
final String v0 = "custom("; // const-string v0, "custom("
/* .line 224 */
v0 = (( java.lang.String ) p1 ).startsWith ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
if ( v0 != null) { // if-eqz v0, :cond_18
/* .line 225 */
v0 = this.mCustomTileBuilderProvider;
/* .line 226 */
/* check-cast v0, Lcom/android/systemui/qs/external/CustomTile$Builder; */
p0 = this.mQsHostLazy;
/* check-cast p0, Lcom/android/systemui/qs/QSHost; */
/* .line 225 */
com.android.systemui.qs.external.CustomTile .create ( v0,p1,p0 );
/* .line 230 */
} // :cond_18
/* sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z */
if ( v0 != null) { // if-eqz v0, :cond_19
final String v0 = "dbg:mem"; // const-string v0, "dbg:mem"
/* .line 231 */
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v0 != null) { // if-eqz v0, :cond_19
/* .line 232 */
p0 = this.mMemoryTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 237 */
} // :cond_19
/* new-instance p0, Ljava/lang/StringBuilder; */
/* invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V */
final String v0 = "No stock tile spec: "; // const-string v0, "No stock tile spec: "
(( java.lang.StringBuilder ) p0 ).append ( v0 ); // invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).append ( p1 ); // invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).toString ( ); // invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
final String p1 = "QSFactory"; // const-string p1, "QSFactory"
android.util.Log .w ( p1,p0 );
int p0 = 0; // const/4 p0, 0x0
/* .line 194 */
/* :pswitch_0 */
p0 = this.mLocationTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 198 */
/* :pswitch_1 */
p0 = this.mHotspotTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 176 */
/* :pswitch_2 */
p0 = this.mInternetTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 204 */
/* :pswitch_3 */
p0 = this.mDataSaverTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 206 */
/* :pswitch_4 */
p0 = this.mNightDisplayTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 216 */
/* :pswitch_5 */
p0 = this.mCameraToggleTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 188 */
/* :pswitch_6 */
p0 = this.mWorkModeTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 174 */
/* :pswitch_7 */
p0 = this.mWifiTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 200 */
/* :pswitch_8 */
p0 = this.mUserTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 210 */
/* :pswitch_9 */
p0 = this.mUiModeNightTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 180 */
/* :pswitch_a */
p0 = this.mCellularTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 196 */
/* :pswitch_b */
p0 = this.mCastTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 208 */
/* :pswitch_c */
p0 = this.mNfcTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 182 */
/* :pswitch_d */
p0 = this.mDndTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 178 */
/* :pswitch_e */
p0 = this.mBluetoothTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 218 */
/* :pswitch_f */
p0 = this.mMicrophoneToggleTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 190 */
/* :pswitch_10 */
p0 = this.mRotationLockTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 202 */
/* :pswitch_11 */
p0 = this.mBatterySaverTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 214 */
/* :pswitch_12 */
p0 = this.mReduceBrightColorsTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 220 */
/* :pswitch_13 */
p0 = this.mDeviceControlsTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 186 */
/* :pswitch_14 */
p0 = this.mAirplaneModeTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 212 */
/* :pswitch_15 */
p0 = this.mScreenRecordTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 192 */
/* :pswitch_16 */
p0 = this.mFlashlightTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* .line 184 */
/* :pswitch_17 */
p0 = this.mColorInversionTileProvider;
/* check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
/* :sswitch_data_0 */
/* .sparse-switch */
/* -0x783813ed -> :sswitch_17 */
/* -0x468444da -> :sswitch_16 */
/* -0x3002d443 -> :sswitch_15 */
/* -0x285a60ae -> :sswitch_14 */
/* -0x21cab94a -> :sswitch_13 */
/* -0x1479af36 -> :sswitch_12 */
/* -0x13be51f3 -> :sswitch_11 */
/* -0x266f082 -> :sswitch_10 */
/* -0x239afa5 -> :sswitch_f */
/* 0xc52 -> :sswitch_e */
/* 0x1851a -> :sswitch_d */
/* 0x1a9ab -> :sswitch_c */
/* 0x2e7b3f -> :sswitch_b */
/* 0x2e8962 -> :sswitch_a */
/* 0x2eef76 -> :sswitch_9 */
/* 0x36ebcb -> :sswitch_8 */
/* 0x37af15 -> :sswitch_7 */
/* 0x37c711 -> :sswitch_6 */
/* 0x60ceb9 -> :sswitch_5 */
/* 0x63f6418 -> :sswitch_4 */
/* 0x6826e95 -> :sswitch_3 */
/* 0x21ffc741 -> :sswitch_2 */
/* 0x418a9ecf -> :sswitch_1 */
/* 0x714f9fb5 -> :sswitch_0 */
} // .end sparse-switch
/* :pswitch_data_0 */
/* .packed-switch 0x0 */
/* :pswitch_17 */
/* :pswitch_16 */
/* :pswitch_15 */
/* :pswitch_14 */
/* :pswitch_13 */
/* :pswitch_12 */
/* :pswitch_11 */
/* :pswitch_10 */
/* :pswitch_f */
/* :pswitch_e */
/* :pswitch_d */
/* :pswitch_c */
/* :pswitch_b */
/* :pswitch_a */
/* :pswitch_9 */
/* :pswitch_8 */
/* :pswitch_7 */
/* :pswitch_6 */
/* :pswitch_5 */
/* :pswitch_4 */
/* :pswitch_3 */
/* :pswitch_2 */
/* :pswitch_1 */
/* :pswitch_0 */
} // .end packed-switch
} // .end method
/* # virtual methods */
public com.android.systemui.plugins.qs.QSTile createTile ( java.lang.String p0 ) {
/* .locals 0 */
/* .line 163 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
if ( p0 != null) { // if-eqz p0, :cond_0
/* .line 165 */
(( com.android.systemui.qs.tileimpl.QSTileImpl ) p0 ).handleStale ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V
} // :cond_0
} // .end method
public com.android.systemui.plugins.qs.QSTileView createTileView ( com.android.systemui.plugins.qs.QSTile p0, Boolean p1 ) {
/* .locals 3 */
/* .line 243 */
/* new-instance v0, Landroid/view/ContextThemeWrapper; */
v1 = this.mQsHostLazy;
/* check-cast v1, Lcom/android/systemui/qs/QSHost; */
/* invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V */
/* .line 244 */
if ( p2 != null) { // if-eqz p2, :cond_0
/* .line 246 */
/* new-instance p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView; */
/* invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V */
/* .line 247 */
} // :cond_0
/* iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSideLabels:Z */
if ( p0 != null) { // if-eqz p0, :cond_1
/* .line 248 */
/* new-instance p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal; */
/* invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V */
/* .line 250 */
} // :cond_1
/* new-instance p0, Lcom/android/systemui/qs/tileimpl/QSTileView; */
/* invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V */
} // .end method
