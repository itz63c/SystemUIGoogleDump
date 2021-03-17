.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideSplitScreenControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
        ">;>;"
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

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final rootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final shellTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final syncQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
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
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->shellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->rootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;"
        }
    .end annotation

    .line 56
    new-instance v6, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideSplitScreenController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideSplitScreenController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->shellTaskOrganizerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->rootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSplitScreenControllerFactory;->provideSplitScreenController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
