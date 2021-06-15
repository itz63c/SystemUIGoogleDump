.class public final Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;
.super Ljava/lang/Object;
.source "SetupWizardAction_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/actions/SetupWizardAction;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deferredSetupGateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/DeferredSetup;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/DeferredSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->settingsActionProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->deferredSetupGateProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->statusBarProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/DeferredSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)",
            "Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;"
        }
    .end annotation

    .line 50
    new-instance v6, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/google/android/systemui/columbus/actions/SetupWizardAction;
    .locals 7

    .line 56
    new-instance v6, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/actions/SetupWizardAction;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->settingsActionProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/SettingsAction;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->deferredSetupGateProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SettingsAction;Lcom/google/android/systemui/columbus/gates/DeferredSetup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/SetupWizardAction_Factory;->get()Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    move-result-object p0

    return-object p0
.end method
