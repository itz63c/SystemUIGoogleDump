.class public final Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;
.super Ljava/lang/Object;
.source "QSFactoryImplGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final airplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final alarmTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;"
        }
    .end annotation
.end field

.field private final batterySaverTileGoogleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private final castTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final colorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final customTileBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceControlsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;"
        }
    .end annotation
.end field

.field private final dndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final flashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final hotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final internetTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;"
        }
    .end annotation
.end field

.field private final locationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final microphoneToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private final qsHostLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final quickAccessWalletTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;"
        }
    .end annotation
.end field

.field private final reduceBrightColorsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseChargingTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final screenRecordTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;"
        }
    .end annotation
.end field

.field private final uiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final userTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final workModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 135
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->qsHostLazyProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 136
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->customTileBuilderProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 137
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 138
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->internetTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 139
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 140
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 141
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->dndTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 142
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 143
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 144
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 145
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 146
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 147
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->locationTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 148
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->castTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 149
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 150
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->userTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 151
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->batterySaverTileGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 152
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 153
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 154
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 155
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 156
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 157
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->screenRecordTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 158
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->reverseChargingTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 159
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 160
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->cameraToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 161
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 162
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->deviceControlsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 163
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->alarmTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 164
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->overlayToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 165
    iput-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->quickAccessWalletTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;)",
            "Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    .line 197
    new-instance v32, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v32
.end method

.method public static newInstance(Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;)",
            "Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    .line 224
    new-instance v32, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;-><init>(Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v32
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;
    .locals 33

    move-object/from16 v0, p0

    .line 170
    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->qsHostLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->customTileBuilderProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->internetTileProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->dndTileProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->locationTileProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->castTileProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->userTileProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->batterySaverTileGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->screenRecordTileProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->reverseChargingTileProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->cameraToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->deviceControlsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->alarmTileProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->overlayToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v0, v0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->quickAccessWalletTileProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v0

    invoke-static/range {v2 .. v32}, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->newInstance(Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle_Factory;->get()Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle;

    move-result-object p0

    return-object p0
.end method
