.class public final Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;
.super Ljava/lang/Object;
.source "EntryPointController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/EntryPointController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final gameModeDndControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final shortcutBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final toastProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->gameModeDndControllerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p7, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->shortcutBarControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p9, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->toastProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p10, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;"
        }
    .end annotation

    .line 78
    new-instance v11, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/EntryPointController;
    .locals 12

    .line 87
    new-instance v11, Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/gamedashboard/EntryPointController;-><init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/EntryPointController;
    .locals 11

    .line 66
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->gameModeDndControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->shortcutBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->toastProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/systemui/gamedashboard/ToastController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/internal/logging/UiEventLogger;

    invoke-static/range {v1 .. v10}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->newInstance(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->get()Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-result-object p0

    return-object p0
.end method
