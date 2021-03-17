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
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
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

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final screenRecordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshotHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->screenRecordControllerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->screenshotHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/os/Handler;)Lcom/google/android/systemui/gamedashboard/EntryPointController;
    .locals 7

    .line 58
    new-instance v6, Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/EntryPointController;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/os/Handler;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/EntryPointController;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->screenRecordControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->screenshotHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/os/Handler;)Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController_Factory;->get()Lcom/google/android/systemui/gamedashboard/EntryPointController;

    move-result-object p0

    return-object p0
.end method
