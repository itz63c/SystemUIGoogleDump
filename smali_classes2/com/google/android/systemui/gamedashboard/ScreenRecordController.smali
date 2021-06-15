.class public Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
.super Ljava/lang/Object;
.source "ScreenRecordController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public static synthetic $r8$lambda$Nqhd2daMg0sPfq_bCZrR4CfuhtU(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$showPrompt$2(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RdZRHkqHIZr20_E-sJrQK0_S58M(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$handleClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VVKKimw_f7cMO98zJQp3W-3Ts4E(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/settings/UserContextProvider;Lcom/google/android/systemui/gamedashboard/ToastController;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 58
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 59
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 61
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUiHandler:Landroid/os/Handler;

    .line 62
    new-instance p1, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 64
    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    return-void
.end method

.method private synthetic lambda$handleClick$1()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->showPrompt()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private synthetic lambda$showPrompt$2(Landroid/content/Intent;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancelCountdown()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->cancelCountdown()V

    return-void
.end method

.method public getController()Lcom/android/systemui/screenrecord/RecordingController;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public handleClick()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->cancelCountdown()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->stopRecording()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public isRecording()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result p0

    return p0
.end method

.method public isStarting()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result p0

    return p0
.end method

.method public showPrompt()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->getPromptIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/content/Intent;)V

    .line 116
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->stopRecording()V

    .line 92
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->showRecordSaveText()V

    return-void
.end method
