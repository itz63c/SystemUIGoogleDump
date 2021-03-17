.class public final Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;
.super Ljava/lang/Object;
.source "DemoModeModule_ProvideDemoModeControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/demomode/DemoModeController;",
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

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->globalSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            ">;)",
            "Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)Lcom/android/systemui/demomode/DemoModeController;
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/systemui/demomode/dagger/DemoModeModule;->provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)Lcom/android/systemui/demomode/DemoModeController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/demomode/DemoModeController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/demomode/DemoModeController;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->globalSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->provideDemoModeController(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;)Lcom/android/systemui/demomode/DemoModeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/demomode/dagger/DemoModeModule_ProvideDemoModeControllerFactory;->get()Lcom/android/systemui/demomode/DemoModeController;

    move-result-object p0

    return-object p0
.end method
