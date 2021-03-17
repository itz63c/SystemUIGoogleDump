.class public Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;
.super Lcom/android/systemui/statusbar/phone/AutoTileManager;
.source "AutoTileManagerGoogle.java"


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryControllerCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;)V

    .line 31
    new-instance p1, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryControllerCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 66
    iput-object p11, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string p2, "ott"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/AutoAddTracker;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/qs/AutoAddTracker;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryControllerCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method


# virtual methods
.method protected startControllersAndSettingsListeners()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->startControllersAndSettingsListeners()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v1, "reverse"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryControllerCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected stopListening()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->stopListening()V

    .line 84
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryControllerCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
