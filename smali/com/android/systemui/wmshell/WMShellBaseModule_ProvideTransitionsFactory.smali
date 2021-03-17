.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideTransitionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/transition/Transitions;",
        ">;"
    }
.end annotation


# instance fields
.field private final animExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
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

.field private final organizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final poolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
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
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->organizerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->poolProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->animExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTransitions(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideTransitions(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/transition/Transitions;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->organizerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->poolProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->animExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->provideTransitions(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransitionsFactory;->get()Lcom/android/wm/shell/transition/Transitions;

    move-result-object p0

    return-object p0
.end method
