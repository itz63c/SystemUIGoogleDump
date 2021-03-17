.class public final Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;
.super Ljava/lang/Object;
.source "QSModuleGoogle_ProvideAutoTileManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoAddTrackerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/AutoAddTracker$Builder;",
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

.field private final castControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private final hotspotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation
.end field

.field private final managedProfileControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field

.field private final nightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private final secureSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/AutoAddTracker$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p2, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->autoAddTrackerBuilderProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p3, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->hostProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p4, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->handlerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p5, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p6, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->hotspotControllerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p7, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p8, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p9, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->nightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p10, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->castControllerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p11, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/AutoAddTracker$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)",
            "Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;"
        }
    .end annotation

    .line 90
    new-instance v12, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static provideAutoTileManager(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/statusbar/phone/AutoTileManager;
    .locals 0

    .line 99
    invoke-static/range {p0 .. p10}, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle;->provideAutoTileManager(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/statusbar/phone/AutoTileManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/AutoTileManager;
    .locals 12

    .line 76
    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->autoAddTrackerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/AutoAddTracker$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->hotspotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->nightDisplayListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/display/NightDisplayListener;

    iget-object v0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->castControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p0, p0, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static/range {v1 .. v11}, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->provideAutoTileManager(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/BatteryController;)Lcom/android/systemui/statusbar/phone/AutoTileManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/systemui/qs/dagger/QSModuleGoogle_ProvideAutoTileManagerFactory;->get()Lcom/android/systemui/statusbar/phone/AutoTileManager;

    move-result-object p0

    return-object p0
.end method
