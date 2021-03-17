.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideShellMainHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field private final sysuiMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShellMainHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideShellMainHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->provideShellMainHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellMainHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
