.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideTransactionPoolFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/TransactionPool;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;->access$000()Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/TransactionPool;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;->provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTransactionPoolFactory;->get()Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    return-object p0
.end method
