.class public Lcom/android/systemui/screenshot/ActionProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActionProxyReceiver.java"


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$ukuT0qmNYLdDpxZysWn0ab2Dw18(Lcom/android/systemui/screenshot/ActionProxyReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ActionProxyReceiver;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/screenshot/ScreenshotSmartActions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 8

    .line 64
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    const-string p0, "android:screenshot_action_intent"

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    .line 67
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const-string v1, "android:screenshot_disallow_enter_pip"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActionProxyReceiver"

    const-string p2, "Pending intent canceled"

    .line 73
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 63
    new-instance v1, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ActionProxyReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x0

    const-string v1, "android:smart_actions_enabled"

    .line 86
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Edit"

    goto :goto_1

    :cond_1
    const-string v0, "Share"

    :goto_1
    move-object v4, v0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    const-string p0, "android:screenshot_id"

    .line 91
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    :cond_2
    return-void
.end method
