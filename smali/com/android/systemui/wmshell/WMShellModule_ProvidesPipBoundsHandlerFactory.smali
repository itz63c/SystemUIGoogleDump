.class public final Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidesPipBoundsHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
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

.field private final pipBoundsStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesPipBoundsHandler(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShellModule;->providesPipBoundsHandler(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-static {v0, p0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->providesPipBoundsHandler(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsHandlerFactory;->get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method
