.class public final Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/QuickStatusBarHeaderController;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final colorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final demoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final nextAlarmControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final qsCarrierGroupControllerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;",
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

.field private final quickQSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final ringerModeTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
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

.field private final userTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final zenModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->zenModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->nextAlarmControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyItemControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->ringerModeTrackerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->qsCarrierGroupControllerBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;)",
            "Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;"
        }
    .end annotation

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

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 121
    new-instance v18, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static newInstance(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/qs/QuickStatusBarHeaderController;
    .locals 19

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

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 133
    new-instance v18, Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;)V

    return-object v18
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/QuickStatusBarHeaderController;
    .locals 19

    move-object/from16 v0, p0

    .line 101
    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->zenModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->nextAlarmControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyItemControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->ringerModeTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/util/RingerModeTracker;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/settings/UserTracker;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->qsCarrierGroupControllerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v0, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->newInstance(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->get()Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    move-result-object p0

    return-object p0
.end method
