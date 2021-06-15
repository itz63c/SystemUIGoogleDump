.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
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

.field private final mainExecutorProvider:Ljavax/inject/Provider;
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
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->provideRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->get()Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-result-object p0

    return-object p0
.end method
