.class public final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule_ProvideBgLooperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Looper;",
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

.method public static create()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory$InstanceHolder;->access$000()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBgLooper()Landroid/os/Looper;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->provideBgLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Looper;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;->provideBgLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBgLooperFactory;->get()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
