.class public Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardSecurityViewFlipperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 55
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 0

    .line 121
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sim_puk_view:I

    return p0

    .line 125
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->keyguard_sim_pin_view:I

    return p0

    .line 124
    :cond_2
    sget p0, Lcom/android/systemui/R$layout;->keyguard_password_view:I

    return p0

    .line 123
    :cond_3
    sget p0, Lcom/android/systemui/R$layout;->keyguard_pin_view:I

    return p0

    .line 122
    :cond_4
    sget p0, Lcom/android/systemui/R$layout;->keyguard_pattern_view:I

    return p0
.end method


# virtual methods
.method getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            ")",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    .line 88
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 94
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 108
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    .line 113
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;

    invoke-direct {v1, p1, p2}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$NullKeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_3
    return-object v1
.end method

.method protected onViewAttached()V
    .locals 0

    return-void
.end method

.method protected onViewDetached()V
    .locals 0

    return-void
.end method

.method public reloadColors()V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputViewController;

    .line 79
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->reloadColors()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputViewController;

    .line 70
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public show(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardInputViewController;->getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method
