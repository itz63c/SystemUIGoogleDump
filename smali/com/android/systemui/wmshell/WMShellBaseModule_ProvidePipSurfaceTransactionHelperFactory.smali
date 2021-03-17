.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->get()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    return-object p0
.end method
