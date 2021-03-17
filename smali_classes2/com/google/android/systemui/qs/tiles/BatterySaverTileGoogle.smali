.class public Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;
.super Lcom/android/systemui/qs/tiles/BatterySaverTile;
.source "BatterySaverTileGoogle.java"


# instance fields
.field private mExtreme:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-void
.end method


# virtual methods
.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    .line 49
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    if-eqz p2, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->extreme_battery_saver_text:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 52
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 54
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public onExtremeBatterySaverChanged(Z)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    if-eq v0, p1, :cond_0

    .line 60
    iput-boolean p1, p0, Lcom/google/android/systemui/qs/tiles/BatterySaverTileGoogle;->mExtreme:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method
