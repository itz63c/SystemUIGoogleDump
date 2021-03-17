.class public final Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;
.super Ljava/lang/Object;
.source "TvWMShellModule_ProvideDisplayImeControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/DisplayImeController;",
        ">;"
    }
.end annotation


# instance fields
.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private final wmServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->wmServiceProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->transactionPoolProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;)",
            "Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)Lcom/android/wm/shell/common/DisplayImeController;
    .locals 0

    .line 57
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/TvWMShellModule;->provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/DisplayImeController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/DisplayImeController;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->wmServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->transactionPoolProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/TransactionPool;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->provideDisplayImeController(Landroid/view/IWindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/TvWMShellModule_ProvideDisplayImeControllerFactory;->get()Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    return-object p0
.end method
