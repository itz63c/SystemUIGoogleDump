.class public abstract Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SensorPrivacyToggleTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;"
    }
.end annotation


# instance fields
.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public static synthetic $r8$lambda$PSinmzsXMZ7CVnLaLeeIXiuzRWA(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->lambda$handleClick$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    .line 68
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 70
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 71
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p8, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$handleClick$0()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p0

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 84
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IZ)V

    return-void
.end method


# virtual methods
.method public abstract getIconRes()I
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSensorId()I
.end method

.method protected handleClick()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p0

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 89
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->setSensorBlocked(IZ)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p2

    goto :goto_0

    .line 96
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getIconRes()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 99
    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 100
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 102
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 103
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 104
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 77
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onSensorBlockedChanged(IZ)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 120
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
