.class public final Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewFlipperController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardSecurityViewControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardInputViewController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
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
            "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardInputViewController$Factory;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->keyguardSecurityViewControllerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardInputViewController$Factory;",
            ">;)",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
    .locals 1

    .line 47
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->keyguardSecurityViewControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->newInstance(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController_Factory;->get()Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    move-result-object p0

    return-object p0
.end method
