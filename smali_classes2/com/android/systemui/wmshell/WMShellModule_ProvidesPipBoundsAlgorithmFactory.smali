.class public final Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;
.super Ljava/lang/Object;
.source "WMShellModule_ProvidesPipBoundsAlgorithmFactory.java"

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

.field private final pipSnapAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
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
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/systemui/wmshell/WMShellModule;->providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->get()Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method
