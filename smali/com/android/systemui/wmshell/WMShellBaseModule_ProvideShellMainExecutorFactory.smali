.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideShellMainExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/ShellExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final sysuiMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
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
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->sysuiMainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShellMainExecutor(Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideShellMainExecutor(Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->sysuiMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->provideShellMainExecutor(Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainExecutorFactory;->get()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method
