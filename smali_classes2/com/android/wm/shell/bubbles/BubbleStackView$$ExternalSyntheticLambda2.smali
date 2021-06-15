.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Landroid/graphics/ColorMatrix;

.field public final synthetic f$2:Landroid/graphics/ColorMatrix;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/ColorMatrix;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/ColorMatrix;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/ColorMatrix;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/ColorMatrix;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->$r8$lambda$GjLzTq8w37RtdSkB2BLn3fI-IAw(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V

    return-void
.end method
