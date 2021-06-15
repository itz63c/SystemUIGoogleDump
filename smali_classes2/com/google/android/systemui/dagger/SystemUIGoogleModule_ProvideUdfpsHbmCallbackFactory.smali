.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUdfpsHbmCallback(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/biometrics/UdfpsHbmCallback;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideUdfpsHbmCallback(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/biometrics/UdfpsHbmCallback;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->provideUdfpsHbmCallback(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUdfpsHbmCallbackFactory;->get()Lcom/android/systemui/biometrics/UdfpsHbmCallback;

    move-result-object p0

    return-object p0
.end method
