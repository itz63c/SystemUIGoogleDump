.class public Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "SetupWizardAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    }
.end annotation


# instance fields
.field private mDeviceInDemoMode:Z

.field private final mKeyguardDeferredSetupGate:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

.field private final mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field private final mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field private final mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

.field private final mSettingsPackageName:Ljava/lang/String;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUserCompletedSuw:Z

.field private final mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 4

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 53
    new-instance v1, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->settings_app_package_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    .line 69
    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    .line 70
    iput-object p4, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 72
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 74
    new-instance p2, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mKeyguardDeferredSetupGate:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    .line 75
    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    .line 76
    invoke-virtual {p2, v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V

    .line 77
    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->isSuwComplete()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    return p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onProgress(FI)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->updateFeedbackEffects(FI)V

    return-void
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    .line 114
    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.settings.ASSIST_GESTURE_TRAINING"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method protected triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    .line 105
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method protected updateFeedbackEffects(FI)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(FI)V

    .line 99
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(FI)V

    return-void
.end method
