.class Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field final synthetic val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 418
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 420
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 422
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1502(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 423
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1602(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 405
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 407
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 408
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 409
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
