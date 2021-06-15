.class public Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ReverseChargingTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private mOverHeat:Z

.field private mPowerSave:Z

.field private mReverse:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mThermalEventListener:Landroid/os/IThermalEventListener;

.field private final mThermalService:Landroid/os/IThermalService;

.field private mThresholdLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseChargingTile"

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/IThermalService;)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 51
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_reverse_charging:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 56
    new-instance p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;-><init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalEventListener:Landroid/os/IThermalEventListener;

    .line 68
    new-instance p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;-><init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 90
    iput-object p9, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p9, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iput-object p10, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->updateThresholdLevel()V

    return-void
.end method

.method private isOverHeat()Z
    .locals 7

    const-string v0, "ReverseChargingTile"

    const/4 v1, 0x0

    .line 251
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 253
    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOverHeat(): current skin status = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", temperature = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v4}, Landroid/os/Temperature;->getValue()F

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOverHeat(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private showBottomSheetIfNecessary()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HasSeenReverseBottomSheet"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REVERSE_CHARGING_BOTTOM_SHEET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    .line 232
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updateThresholdLevel()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_battery_usage_amount"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    .line 242
    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThresholdLevel(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReverseChargingTile"

    .line 243
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 151
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.REVERSE_CHARGING_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->reverse_charging_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    .line 162
    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleClick(): rtx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",this="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReverseChargingTile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setReverseState(Z)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->showBottomSheetIfNecessary()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5

    .line 107
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mListening:Z

    const-string v0, "ReverseChargingTile"

    if-eqz p1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->updateThresholdLevel()V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_battery_usage_amount"

    .line 115
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 114
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    iget-object v2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register thermal event listener, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->isOverHeat()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    goto :goto_1

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalService:Landroid/os/IThermalService;

    iget-object v2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v1, v2}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister thermal event listener, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    sget-boolean v1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening(): rtx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",listening="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5

    .line 176
    iget-object p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p2

    .line 177
    iget v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    iget v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 178
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_3

    .line 180
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 181
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :cond_4
    :goto_3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 182
    iget-object v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 184
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 185
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 186
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->too_hot_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 187
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_battery_saver:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->wireless_charging_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 190
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->low_battery_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 191
    :goto_4
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 192
    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateState(): ps="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",wlc="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",low="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",over="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",rtx="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseChargingTile"

    .line 193
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseSupported()Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 97
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    .line 203
    iget-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    .line 204
    sget-boolean p1, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBatteryLevelChanged(): rtx="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",level="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mBatteryLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",threshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mThresholdLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReverseChargingTile"

    .line 205
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mPowerSave:Z

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onReverseChanged(ZILjava/lang/String;)V
    .locals 2

    .line 220
    sget-boolean v0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReverseChanged(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",name="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",this="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ReverseChargingTile"

    .line 221
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mReverse:Z

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
