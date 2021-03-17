.class public Lcom/android/systemui/qs/tiles/InternetTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "InternetTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;,
        Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;,
        Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;,
        Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;,
        Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERNET_PANEL:Landroid/content/Intent;

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mLastTileState:I

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/InternetTile;->INTERNET_PANEL:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 74
    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/InternetTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 89
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 90
    invoke-interface {p8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-interface {p8, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method private appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 539
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 542
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 543
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 545
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_carrier_text_format:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-static {p0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private getMobileDataContentName(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)Ljava/lang/CharSequence;
    .locals 4

    .line 550
    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->data_connection_roaming:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 554
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 555
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_data_text_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 557
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    if-eqz v0, :cond_2

    .line 558
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->data_connection_roaming:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 560
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_wifi_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 5

    .line 484
    check-cast p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 485
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateCellularState: CellularCallbackInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 489
    sget v1, Lcom/android/systemui/R$string;->quick_settings_internet_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    .line 490
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 491
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 492
    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 493
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_2

    .line 494
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mActivityIn:Z

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-eqz v1, :cond_3

    .line 495
    iget-boolean v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mActivityOut:Z

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 496
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 498
    iget-boolean v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    if-eqz v1, :cond_4

    iget v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    sget v4, Lcom/android/settingslib/mobile/TelephonyIcons;->ICON_CWF:I

    if-eq v2, v4, :cond_4

    .line 499
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 500
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_airplane:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 501
    sget p0, Lcom/android/systemui/R$string;->status_bar_airplane:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 502
    :cond_4
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoDefaultNetwork:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    if-eqz v2, :cond_5

    .line 503
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_unavailable:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 504
    sget p0, Lcom/android/systemui/R$string;->quick_settings_networks_unavailable:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 505
    :cond_5
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoValidatedNetwork:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    if-nez v2, :cond_6

    .line 506
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_available:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 507
    sget p0, Lcom/android/systemui/R$string;->quick_settings_networks_available:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 510
    sget v1, Lcom/android/systemui/R$string;->quick_settings_airplane_safe_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 512
    :cond_7
    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;

    iget v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;-><init>(I)V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 513
    iget-object v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataSubscriptionName:Ljava/lang/CharSequence;

    .line 514
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->getMobileDataContentName(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 513
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 517
    :goto_2
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 518
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne p0, v3, :cond_8

    const-string p0, ""

    .line 520
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 522
    :cond_8
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :goto_3
    return-void
.end method

.method private handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 3

    .line 527
    check-cast p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 528
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateEthernetState: EthernetCallbackInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 532
    sget v0, Lcom/android/systemui/R$string;->quick_settings_internet_label:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    .line 533
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 534
    iget p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 535
    iget-object p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 10

    .line 403
    check-cast p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 404
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateWifiState: WifiCallbackInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    if-lez v3, :cond_1

    iget-object v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 408
    :goto_0
    iget v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    if-lez v4, :cond_2

    iget-object v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 409
    :goto_1
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v5, v0, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 413
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_5

    .line 414
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    const/high16 v5, 0x40c00000    # 6.0f

    .line 415
    iput v5, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 417
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 418
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    iget-object v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/qs/tiles/InternetTile;->getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 419
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 420
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 421
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_6

    .line 422
    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mActivityIn:Z

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-eqz v0, :cond_7

    .line 423
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mActivityOut:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 426
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 427
    sget v7, Lcom/android/systemui/R$string;->quick_settings_internet_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 428
    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    if-eqz v8, :cond_b

    .line 429
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_8

    .line 430
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 431
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_airplane:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 432
    sget v4, Lcom/android/systemui/R$string;->status_bar_airplane:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_8
    if-nez v3, :cond_a

    .line 434
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_airplane:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 435
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    if-eqz v4, :cond_9

    .line 436
    sget v4, Lcom/android/systemui/R$string;->quick_settings_networks_unavailable:I

    .line 437
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 439
    :cond_9
    sget v4, Lcom/android/systemui/R$string;->quick_settings_networks_available:I

    .line 440
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 443
    :cond_a
    iget v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 444
    sget v4, Lcom/android/systemui/R$string;->quick_settings_airplane_safe_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 446
    :cond_b
    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    if-eqz v8, :cond_c

    .line 447
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_unavailable:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 448
    sget v4, Lcom/android/systemui/R$string;->quick_settings_networks_unavailable:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    .line 449
    :cond_c
    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    if-nez v8, :cond_d

    .line 450
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_no_internet_available:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 451
    sget v4, Lcom/android/systemui/R$string;->quick_settings_networks_available:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    .line 452
    :cond_d
    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    if-eqz v8, :cond_e

    const v4, 0x1080540

    .line 453
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5

    .line 455
    :cond_e
    iget-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const v9, 0x1080560

    if-nez v8, :cond_f

    .line 456
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v2, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 457
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 458
    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5

    :cond_f
    if-eqz v3, :cond_10

    .line 460
    iget v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5

    :cond_10
    if-eqz v4, :cond_11

    .line 462
    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5

    .line 464
    :cond_11
    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 466
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    .line 467
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v7, :cond_13

    if-eqz v3, :cond_12

    .line 470
    iget-object v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 472
    :cond_12
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 473
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 476
    :cond_13
    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 478
    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_settings:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v1

    .line 478
    invoke-virtual {v6, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 480
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 141
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 101
    new-instance p0, Lcom/android/systemui/qs/AlphaControlledSignalTileView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    "

    .line 586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p3}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastTileState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSignalCallback="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 106
    sget-object p0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_internet_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v0, Lcom/android/systemui/qs/tiles/InternetTile;->INTERNET_PANEL:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 3

    .line 379
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 383
    iput v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 386
    iput v2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    if-nez p2, :cond_3

    .line 393
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 395
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-ne p2, v2, :cond_5

    .line 397
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 127
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 128
    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 0

    .line 96
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method
