.class public abstract Lcom/google/android/systemui/columbus/actions/DeskClockAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "DeskClockAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/DeskClockAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/DeskClockAction$Companion;


# instance fields
.field private alertFiring:Z

.field private final alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

.field private final gateListener:Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;

.field private receiverRegistered:Z

.field private final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

.field private final userSwitchCallback:Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/DeskClockAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->Companion:Lcom/google/android/systemui/columbus/actions/DeskClockAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V
    .locals 3

    const-string v0, "Columbus/DeskClockAct"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "silenceAlertsDisabled"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activityManagerService"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 25
    invoke-direct {p0, p1, v1, v2, v1}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    .line 27
    new-instance p1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->gateListener:Lcom/google/android/systemui/columbus/actions/DeskClockAction$gateListener$1;

    .line 32
    new-instance v1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    .line 42
    new-instance v1, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->userSwitchCallback:Lcom/google/android/systemui/columbus/actions/DeskClockAction$userSwitchCallback$1;

    .line 53
    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 55
    :try_start_0
    invoke-interface {p3, v1, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to register user switch observer"

    .line 57
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method

.method public static final synthetic access$setAlertFiring$p(Lcom/google/android/systemui/columbus/actions/DeskClockAction;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$updateBroadcastReceiver(Lcom/google/android/systemui/columbus/actions/DeskClockAction;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method

.method private final updateAvailable()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method

.method private final updateBroadcastReceiver()V
    .locals 7

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    .line 75
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getAlertAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->getDoneAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertReceiver:Lcom/google/android/systemui/columbus/actions/DeskClockAction$alertReceiver$1;

    .line 86
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.android.systemui.permission.SEND_ALERT_BROADCASTS"

    .line 84
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateAvailable()V

    return-void
.end method


# virtual methods
.method protected abstract createDismissIntent()Landroid/content/Intent;
.end method

.method protected abstract getAlertAction()Ljava/lang/String;
.end method

.method protected abstract getDoneAction()Ljava/lang/String;
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->createDismissIntent()Landroid/content/Intent;

    move-result-object p1

    .line 102
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/high16 v1, 0x10000000

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android-app://"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.REFERRER"

    .line 105
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Columbus/DeskClockAct"

    const-string v1, "Failed to dismiss alert"

    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->alertFiring:Z

    .line 118
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->updateAvailable()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [receiverRegistered -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/DeskClockAction;->receiverRegistered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
