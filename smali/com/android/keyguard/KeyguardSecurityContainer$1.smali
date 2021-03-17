.class Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFinalBounds:Landroid/graphics/Rect;

.field private final mInitialBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    .line 106
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->animateForIme(IF)V

    :cond_0
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p2, p0}, Landroid/widget/ViewFlipper;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    .line 133
    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 143
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->animateForIme(IF)V

    :goto_1
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-object p2
.end method
