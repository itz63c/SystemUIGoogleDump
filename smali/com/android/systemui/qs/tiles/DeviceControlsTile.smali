.class public final Lcom/android/systemui/qs/tiles/DeviceControlsTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DeviceControlsTile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DeviceControlsTile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/DeviceControlsTile$Companion;


# instance fields
.field private final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field private controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

.field private final controlsLockscreen:Z

.field private final dialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final intent:Landroid/content/Intent;

.field private final listingCallback:Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->Companion:Lcom/android/systemui/qs/tiles/DeviceControlsTile$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/statusbar/FeatureFlags;Ljavax/inject/Provider;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsDialog;",
            ">;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            ")V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundLooper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qsLogger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsComponent"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalSettings"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 53
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 54
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 55
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->dialogProvider:Ljavax/inject/Provider;

    const-string p1, "controls_lockscreen"

    const/4 p2, 0x0

    .line 71
    invoke-interface {p11, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsLockscreen:Z

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACTION_DEVICE_CONTROLS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->intent:Landroid/content/Intent;

    .line 76
    sget p1, Lcom/android/systemui/R$drawable;->ic_device_light:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 78
    new-instance p1, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->listingCallback:Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;

    .line 87
    invoke-virtual {p8}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/DeviceControlsTile$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static final synthetic access$createDialog(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->createDialog()V

    return-void
.end method

.method public static final synthetic access$getControlsComponent$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/controls/dagger/ControlsComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    return-object p0
.end method

.method public static final synthetic access$getControlsDialog$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/controls/ui/ControlsDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    return-object p0
.end method

.method public static final synthetic access$getHasControlsApps$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getListingCallback$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->listingCallback:Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;

    return-object p0
.end method

.method private final createDialog()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->dialogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlsDialog;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    :cond_1
    return-void
.end method

.method private final dismissDialog()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsDialog;->dismiss()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    :goto_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_controls_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "mContext.getText(R.string.quick_controls_title)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->dismissDialog()V

    .line 106
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const-string v0, ""

    .line 132
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 133
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 134
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 135
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 136
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 137
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsDialog:Lcom/android/systemui/controls/ui/ControlsDialog;

    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleUpdateState$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleUpdateState$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 142
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->dismissDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isKeyguardLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsLockscreen:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getVisibility()Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 99
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-object p0
.end method
