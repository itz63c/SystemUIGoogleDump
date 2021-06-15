.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->dock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field final synthetic val$rightSide:Z

.field final synthetic val$translationX:F


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;ZF)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->val$rightSide:Z

    iput p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->val$translationX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 441
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->val$rightSide:Z

    invoke-static {p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)V

    .line 442
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->val$translationX:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 448
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1402(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1402(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    return-void
.end method
