.class public final Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/ShellExecutor;",
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

.method public static create()Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;->access$000()Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideSplashScreenExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->provideSplashScreenExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;->provideSplashScreenExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;->get()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method
