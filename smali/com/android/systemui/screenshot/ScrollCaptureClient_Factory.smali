.class public final Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;
.super Ljava/lang/Object;
.source "ScrollCaptureClient_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenshot/ScrollCaptureClient;",
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

.field private final windowManagerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
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
            "Landroid/view/IWindowManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;)",
            "Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/IWindowManager;)Lcom/android/systemui/screenshot/ScrollCaptureClient;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/screenshot/ScrollCaptureClient;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/ScrollCaptureClient;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenshot/ScrollCaptureClient;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowManager;

    invoke-static {v0, p0}, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->newInstance(Landroid/content/Context;Landroid/view/IWindowManager;)Lcom/android/systemui/screenshot/ScrollCaptureClient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->get()Lcom/android/systemui/screenshot/ScrollCaptureClient;

    move-result-object p0

    return-object p0
.end method
