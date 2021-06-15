.class public final Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SetupWizardAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;->$context:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->access$setDeviceInDemoMode$p(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Z)V

    .line 32
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/SetupWizardAction;)V

    return-void
.end method
