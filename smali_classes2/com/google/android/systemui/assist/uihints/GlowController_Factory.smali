.class public final Lcom/google/android/systemui/assist/uihints/GlowController_Factory;
.super Ljava/lang/Object;
.source "GlowController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/GlowController;",
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

.field private final parentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final touchInsideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->parentProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GlowController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/GlowController_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)Lcom/google/android/systemui/assist/uihints/GlowController;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/GlowController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/GlowController;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->parentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)Lcom/google/android/systemui/assist/uihints/GlowController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController_Factory;->get()Lcom/google/android/systemui/assist/uihints/GlowController;

    move-result-object p0

    return-object p0
.end method
