.class public final Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;
.super Ljava/lang/Object;
.source "DozeParameters_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/DozeParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final ambientDisplayConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->ambientDisplayConfigurationProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;"
        }
    .end annotation

    .line 63
    new-instance v8, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 9

    .line 70
    new-instance v8, Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/FeatureFlags;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->ambientDisplayConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->newInstance(Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/FeatureFlags;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->get()Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p0

    return-object p0
.end method
