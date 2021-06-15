.class public final Lcom/google/android/systemui/columbus/actions/SetupWizardAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "SetupWizardAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/SetupWizardAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$Companion;


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;

.field private final deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

.field private deviceInDemoMode:Z

.field private final gateListener:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$gateListener$1;

.field private final settingsAction:Lcom/google/android/systemui/columbus/actions/SettingsAction;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final tag:Ljava/lang/String;

.field private final userSwitchCallback:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->Companion:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deferredSetupGate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->settingsAction:Lcom/google/android/systemui/columbus/actions/SettingsAction;

    .line 21
    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    .line 22
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string p4, "Columbus/SUW"

    .line 27
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->tag:Ljava/lang/String;

    .line 29
    new-instance p4, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;

    invoke-direct {p4, p0, p1}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->userSwitchCallback:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;

    .line 35
    new-instance p1, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->gateListener:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$gateListener$1;

    .line 40
    new-instance v0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->actionListener:Lcom/google/android/systemui/columbus/actions/SetupWizardAction$actionListener$1;

    .line 49
    invoke-virtual {p5, p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 50
    invoke-virtual {p3, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 51
    invoke-virtual {p2, v0}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    .line 52
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$setDeviceInDemoMode$p(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->deviceInDemoMode:Z

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->updateAvailable()V

    return-void
.end method

.method private final updateAvailable()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->deviceInDemoMode:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->settingsAction:Lcom/google/android/systemui/columbus/actions/SettingsAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    .line 65
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->settingsAction:Lcom/google/android/systemui/columbus/actions/SettingsAction;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.settings.COLUMBUS_GESTURE_TRAINING"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
