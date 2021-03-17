.class public final Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;
.super Ljava/lang/Object;
.source "QSCustomizerController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/customize/QSCustomizerController;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final qsLabelsFlagProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final qsTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final tileAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final tileQueryHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
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

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/QSCustomizer;",
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
            "Lcom/android/systemui/qs/customize/QSCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tileQueryHelperProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tileAdapterProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p8, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p9, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p10, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p11, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->qsLabelsFlagProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/QSCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;"
        }
    .end annotation

    .line 79
    new-instance v12, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;

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

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newInstance(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/tuner/TunerService;Z)Lcom/android/systemui/qs/customize/QSCustomizerController;
    .locals 13

    .line 87
    new-instance v12, Lcom/android/systemui/qs/customize/QSCustomizerController;

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

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/customize/QSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/tuner/TunerService;Z)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/customize/QSCustomizerController;
    .locals 12

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tileQueryHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tileAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->lightBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->qsLabelsFlagProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->newInstance(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/tuner/TunerService;Z)Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->get()Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object p0

    return-object p0
.end method
