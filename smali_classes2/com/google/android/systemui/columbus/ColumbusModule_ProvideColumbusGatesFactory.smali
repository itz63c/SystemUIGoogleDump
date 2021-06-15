.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideColumbusGatesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/columbus/gates/Gate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final cameraVisibilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final chargingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;"
        }
    .end annotation
.end field

.field private final flagEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDeferredSetupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardProximityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationBarVisibilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final powerSaveStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field

.field private final powerStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final setupWizardProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;"
        }
    .end annotation
.end field

.field private final setupWizardSuppressedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;",
            ">;"
        }
    .end annotation
.end field

.field private final systemKeyPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final usbStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;"
        }
    .end annotation
.end field

.field private final vrModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->flagEnabledProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->chargingStateProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->usbStateProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardProximityProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->navigationBarVisibilityProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p7, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->systemKeyPressProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p8, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->telephonyActivityProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p9, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->vrModeProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p10, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardDeferredSetupProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p11, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardSuppressedProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p12, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->cameraVisibilityProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p13, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerSaveStateProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p14, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;"
        }
    .end annotation

    .line 104
    new-instance v15, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v15
.end method

.method public static provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            "Lcom/google/android/systemui/columbus/gates/ChargingState;",
            "Lcom/google/android/systemui/columbus/gates/UsbState;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            "Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;",
            "Lcom/google/android/systemui/columbus/gates/SystemKeyPress;",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;",
            "Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static/range {p0 .. p13}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->flagEnabledProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/columbus/gates/FlagEnabled;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->chargingStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/columbus/gates/ChargingState;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->usbStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/columbus/gates/UsbState;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardProximityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/columbus/gates/SetupWizard;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->navigationBarVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->systemKeyPressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->telephonyActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->vrModeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/systemui/columbus/gates/VrMode;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardDeferredSetupProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardSuppressedProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->cameraVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerSaveStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/systemui/columbus/gates/PowerSaveState;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerStateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v14, p0

    check-cast v14, Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-static/range {v1 .. v14}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/ChargingState;Lcom/google/android/systemui/columbus/gates/UsbState;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Lcom/google/android/systemui/columbus/gates/SystemKeyPress;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
